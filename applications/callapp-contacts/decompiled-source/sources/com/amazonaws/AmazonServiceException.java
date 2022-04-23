package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonServiceException.class */
public class AmazonServiceException extends AmazonClientException {
    private static final long serialVersionUID = 1;
    private String errorCode;
    private String errorMessage;
    private ErrorType errorType = ErrorType.Unknown;
    private String requestId;
    private String serviceName;
    private int statusCode;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonServiceException$ErrorType.class */
    public enum ErrorType {
        Client,
        Service,
        Unknown
    }

    public AmazonServiceException(String str) {
        super(str);
        this.errorMessage = str;
    }

    public AmazonServiceException(String str, Exception exc) {
        super(null, exc);
        this.errorMessage = str;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public ErrorType getErrorType() {
        return this.errorType;
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

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public void setErrorType(ErrorType errorType) {
        this.errorType = errorType;
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
