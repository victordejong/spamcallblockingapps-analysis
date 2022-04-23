package com.google.common.util.concurrent;

import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException.class */
public final class TimeoutFuture$TimeoutFutureException extends TimeoutException {
    public TimeoutFuture$TimeoutFutureException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        synchronized (this) {
            setStackTrace(new StackTraceElement[0]);
        }
        return this;
    }
}
