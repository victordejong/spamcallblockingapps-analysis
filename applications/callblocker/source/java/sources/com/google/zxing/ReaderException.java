package com.google.zxing;
/* loaded from: classes-dex2jar.jar:com/google/zxing/ReaderException.class */
public abstract class ReaderException extends Exception {

    /* renamed from: a */
    protected static final boolean f21482a;

    /* renamed from: b */
    protected static final StackTraceElement[] f21483b;

    static {
        f21482a = System.getProperty("surefire.test.class.path") != null;
        f21483b = new StackTraceElement[0];
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        synchronized (this) {
        }
        return null;
    }
}
