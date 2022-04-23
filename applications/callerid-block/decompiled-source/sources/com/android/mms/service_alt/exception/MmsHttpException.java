package com.android.mms.service_alt.exception;
/* loaded from: classes-dex2jar.jar:com/android/mms/service_alt/exception/MmsHttpException.class */
public class MmsHttpException extends Exception {
    private final int mStatusCode;

    public MmsHttpException(int i) {
        this.mStatusCode = i;
    }

    public MmsHttpException(int i, String str) {
        super(str);
        this.mStatusCode = i;
    }

    public MmsHttpException(int i, String str, Throwable th) {
        super(str, th);
        this.mStatusCode = i;
    }

    public MmsHttpException(int i, Throwable th) {
        super(th);
        this.mStatusCode = i;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }
}
