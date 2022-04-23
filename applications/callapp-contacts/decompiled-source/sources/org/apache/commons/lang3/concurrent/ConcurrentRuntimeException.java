package org.apache.commons.lang3.concurrent;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/concurrent/ConcurrentRuntimeException.class */
public class ConcurrentRuntimeException extends RuntimeException {
    protected ConcurrentRuntimeException() {
    }

    public ConcurrentRuntimeException(String str, Throwable th) {
        super(str, a.a(th));
    }

    public ConcurrentRuntimeException(Throwable th) {
        super(a.a(th));
    }
}
