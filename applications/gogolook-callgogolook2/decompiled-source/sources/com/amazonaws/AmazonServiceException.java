package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonServiceException.class */
public class AmazonServiceException extends AmazonClientException {
    public String errorCode;
    public String errorMessage;
    public String requestId;
    public String serviceName;
    public int statusCode;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonServiceException$ErrorType.class */
    public enum ErrorType {
        Client,
        Service,
        Unknown
    }

    public AmazonServiceException(String str) {
        super(str);
        ErrorType errorType = ErrorType.Unknown;
        this.errorMessage = str;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getErrorMessage() + " (Service: " + getServiceName() + "; Status Code: " + getStatusCode() + "; Error Code: " + getErrorCode() + "; Request ID: " + getRequestId() + ")";
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getServiceName() {
        return this.serviceName;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setErrorType(ErrorType errorType) {
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setServiceName(String str) {
        this.serviceName = str;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }
}
