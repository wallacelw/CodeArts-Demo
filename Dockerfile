FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/

RUN pip install --progress-bar off -r requirements.txt

COPY . /code/

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]




