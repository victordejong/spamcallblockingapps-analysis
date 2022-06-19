package com.lidroid.xutils.exception;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/exception/BaseException.class */
public class BaseException extends Exception {
    private static final long serialVersionUID = 1;

    public BaseException() {
    }

    public BaseException(String str) {
        super(str);
    }

    public BaseException(String str, Throwable th) {
        super(str, th);
    }

    public BaseException(Throwable th) {
        super(th);
    }
}
