.PHONY: deps lint run test

deps:
	pip install -r requirements.txt

	pip install -r test_requirements.txt    

lint:
	flake8 hello_world test 

# Uruchamianie aplikacji
run:
	python main.py

# Uruchamianie testów
test:
	PYTHONPATH=. py.test --verbose -s
