package org.apache.commons.lang3.concurrent;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/concurrent/CircuitBreakingException.class */
public class CircuitBreakingException extends RuntimeException {
    public CircuitBreakingException() {
    }

    public CircuitBreakingException(String str) {
        super(str);
    }

    public CircuitBreakingException(String str, Throwable th) {
        super(str, th);
    }

    public CircuitBreakingException(Throwable th) {
        super(th);
    }
}
