package com.google.zxing;
/* loaded from: classes-dex2jar.jar:com/google/zxing/FormatException.class */
public final class FormatException extends ReaderException {

    /* renamed from: c */
    private static final FormatException f21480c;

    static {
        FormatException formatException = new FormatException();
        f21480c = formatException;
        formatException.setStackTrace(f21483b);
    }

    private FormatException() {
    }

    /* renamed from: a */
    public static FormatException m1606a() {
        return f21482a ? new FormatException() : f21480c;
    }
}
