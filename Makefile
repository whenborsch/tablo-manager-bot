.PHONY:

# make build
build:
	@echo "Building the application"
	@go build -o bin/main main.go

migrations-up:
	@echo "Running migrations"
	@go run main.go migrate up

migrations-down:
	@echo "Rolling back migrations"
	@go run main.go migrate down

run:
	@echo "Running the application"
	@go run main.go

# make test with coverage
test:
	@echo "Running tests"
	@go test -v -cover ./...

# make lint
lint:
	@echo "Running linter"
	@golangci-lint run -v