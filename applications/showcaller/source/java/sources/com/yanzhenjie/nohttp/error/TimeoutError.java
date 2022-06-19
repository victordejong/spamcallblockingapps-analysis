package com.yanzhenjie.nohttp.error;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/error/TimeoutError.class */
public class TimeoutError extends Exception {
    private static final long serialVersionUID = 1164986;

    public TimeoutError() {
    }

    public TimeoutError(String str) {
        super(str);
    }

    public TimeoutError(String str, Throwable th) {
        super(str, th);
    }

    public TimeoutError(Throwable th) {
        super(th);
    }
}
