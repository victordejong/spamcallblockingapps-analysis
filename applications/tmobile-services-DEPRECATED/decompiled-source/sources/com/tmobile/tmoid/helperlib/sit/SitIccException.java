package com.tmobile.tmoid.helperlib.sit;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitIccException.class */
public class SitIccException extends SitException {
    public static final int ERROR_TYPE_AKA_FAILURE = 1;
    public static final int ERROR_TYPE_AKA_RETRY = 2;
    public static final int ERROR_TYPE_ICC_FAILURE = 3;
    public static final int ERROR_TYPE_OTHER = 0;
    private int errorType;

    public SitIccException() {
        super("Icc communication exception!");
        this.errorType = 0;
    }

    public SitIccException(int i) {
        super("ErrorType code: " + i);
        this.errorType = 0;
        this.errorType = i;
    }

    public SitIccException(int i, String str) {
        super(str);
        this.errorType = 0;
        this.errorType = i;
    }

    public SitIccException(int i, Throwable th) {
        super(th);
        this.errorType = 0;
        this.errorType = i;
    }

    public SitIccException(String str) {
        super(str);
        this.errorType = 0;
    }

    public SitIccException(Throwable th) {
        super(th);
        this.errorType = 0;
    }

    public int getErrorType() {
        return this.errorType;
    }
}
