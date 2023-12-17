.PHONY: help install launch clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: node_modules

launch: docs
	npx --no http-server $<

clean:
	rm -rf node_moduels

node_modules:
	npm install
