package com.google.common.util.concurrent;
/* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/UncheckedTimeoutException.class */
public class UncheckedTimeoutException extends RuntimeException {
    public UncheckedTimeoutException() {
    }

    public UncheckedTimeoutException(String str) {
        super(str);
    }

    public UncheckedTimeoutException(String str, Throwable th) {
        super(str, th);
    }

    public UncheckedTimeoutException(Throwable th) {
        super(th);
    }
}
