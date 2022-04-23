package com.google.common.util.concurrent;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/UncheckedExecutionException.class */
public class UncheckedExecutionException extends RuntimeException {
    public static final long serialVersionUID = 0;

    public UncheckedExecutionException() {
    }

    public UncheckedExecutionException(String str) {
        super(str);
    }

    public UncheckedExecutionException(String str, Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(Throwable th) {
        super(th);
    }
}
