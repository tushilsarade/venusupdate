FROM python:3.7-buster
COPY . /
RUN pip install -r requirements.txt
ENV GOOGLE_CLOUD_PROJECT roi-mb-appuser13
CMD gunicorn -b :8080 main:app
