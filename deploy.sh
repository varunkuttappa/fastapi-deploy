#!/bin/bash

echo "Stopping existing FastAPI service..."
pkill -f "uvicorn main:app"  # Kill any existing FastAPI process

echo "Starting FastAPI application..."
nohup uvicorn main:app --host 0.0.0.0 --port 8000 --reload > fastapi.log 2>&1 &
