package com.google.zxing;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/ChecksumException.class */
public final class ChecksumException extends ReaderException {

    /* renamed from: c  reason: collision with root package name */
    private static final ChecksumException f32894c;

    static {
        ChecksumException checksumException = new ChecksumException();
        f32894c = checksumException;
        checksumException.setStackTrace(f32898b);
    }

    private ChecksumException() {
    }

    private ChecksumException(Throwable th) {
        super(th);
    }
}
