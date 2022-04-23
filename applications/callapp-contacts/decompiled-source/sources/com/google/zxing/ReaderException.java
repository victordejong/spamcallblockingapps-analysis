package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/ReaderException.class */
public abstract class ReaderException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f32897a;

    /* renamed from: b  reason: collision with root package name */
    protected static final StackTraceElement[] f32898b;

    static {
        f32897a = System.getProperty("surefire.test.class.path") != null;
        f32898b = new StackTraceElement[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReaderException() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
