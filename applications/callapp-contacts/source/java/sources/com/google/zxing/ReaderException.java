package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/ReaderException.class */
public abstract class ReaderException extends Exception {

    /* renamed from: a */
    protected static final boolean f57048a;

    /* renamed from: b */
    protected static final StackTraceElement[] f57049b;

    static {
        f57048a = System.getProperty("surefire.test.class.path") != null;
        f57049b = new StackTraceElement[0];
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
