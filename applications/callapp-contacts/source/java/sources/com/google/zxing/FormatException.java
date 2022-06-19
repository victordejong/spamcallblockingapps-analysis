package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/FormatException.class */
public final class FormatException extends ReaderException {

    /* renamed from: c */
    private static final FormatException f57046c;

    static {
        FormatException formatException = new FormatException();
        f57046c = formatException;
        formatException.setStackTrace(f57049b);
    }

    private FormatException() {
    }

    private FormatException(Throwable th) {
        super(th);
    }

    /* renamed from: a */
    public static FormatException m7765a() {
        return f57048a ? new FormatException() : f57046c;
    }
}
