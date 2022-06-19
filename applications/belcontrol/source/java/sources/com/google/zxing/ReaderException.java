package com.google.zxing;
/* loaded from: classes-dex2jar.jar:com/google/zxing/ReaderException.class */
public abstract class ReaderException extends Exception {
    public static final StackTraceElement[] NO_TRACE;
    public static final boolean isStackTrace;

    static {
        isStackTrace = System.getProperty("surefire.test.class.path") != null;
        NO_TRACE = new StackTraceElement[0];
    }

    public ReaderException() {
    }

    public ReaderException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        synchronized (this) {
        }
        return null;
    }
}
