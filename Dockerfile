# 기본 이미지 설정
FROM python:3.9

# 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 패키지 설치
COPY requirements.txt /app/
RUN pip3 install --no-cache-dir -r requirements.txt

# 프로젝트 복사
COPY . /app/
