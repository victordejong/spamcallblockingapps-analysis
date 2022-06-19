package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AbortedException.class */
public class AbortedException extends AmazonClientException {
    public AbortedException() {
        super("");
    }

    public AbortedException(String str) {
        super(str);
    }

    public AbortedException(String str, Throwable th) {
        super(str, th);
    }

    public AbortedException(Throwable th) {
        super("", th);
    }

    @Override // com.amazonaws.AmazonClientException
    public boolean isRetryable() {
        return false;
    }
}
