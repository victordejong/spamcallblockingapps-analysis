package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonClientException.class */
public class AmazonClientException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public AmazonClientException(String str) {
        super(str);
    }

    public AmazonClientException(String str, Throwable th) {
        super(str, th);
    }

    public AmazonClientException(Throwable th) {
        super(th);
    }

    public boolean isRetryable() {
        return true;
    }
}
