package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceResponse.class */
public class AmazonWebServiceResponse<T> {
    public ResponseMetadata responseMetadata;
    public T result;

    public String getRequestId() {
        ResponseMetadata responseMetadata = this.responseMetadata;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.getRequestId();
    }

    public T getResult() {
        return this.result;
    }

    public void setResponseMetadata(ResponseMetadata responseMetadata) {
        this.responseMetadata = responseMetadata;
    }

    public void setResult(T t) {
        this.result = t;
    }
}
