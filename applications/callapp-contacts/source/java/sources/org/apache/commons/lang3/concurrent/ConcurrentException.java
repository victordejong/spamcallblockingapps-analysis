package org.apache.commons.lang3.concurrent;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/concurrent/ConcurrentException.class */
public class ConcurrentException extends Exception {
    protected ConcurrentException() {
    }

    public ConcurrentException(String str, Throwable th) {
        super(str, C20752a.m532a(th));
    }

    public ConcurrentException(Throwable th) {
        super(C20752a.m532a(th));
    }
}
