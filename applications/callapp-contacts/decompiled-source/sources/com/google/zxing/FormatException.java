package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/FormatException.class */
public final class FormatException extends ReaderException {

    /* renamed from: c  reason: collision with root package name */
    private static final FormatException f32895c;

    static {
        FormatException formatException = new FormatException();
        f32895c = formatException;
        formatException.setStackTrace(f32898b);
    }

    private FormatException() {
    }

    private FormatException(Throwable th) {
        super(th);
    }

    public static FormatException a() {
        return f32897a ? new FormatException() : f32895c;
    }
}
