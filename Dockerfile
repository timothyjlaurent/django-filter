FROM python:3.5
MAINTAINER Carlton Gibson "carlton.gibson@noumenal.es"

COPY requirements /requirements
COPY django_filters /django_filters
COPY tests /tests
COPY runtests.py /runtests.py

RUN pip install --upgrade pip
RUN pip install -r requirements/test.txt

CMD ["/runtests.py"]