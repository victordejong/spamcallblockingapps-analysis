package com.linkedin.android.litr.exception;

import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/InsufficientDiskSpaceException.class */
public class InsufficientDiskSpaceException extends MediaTransformationException {

    /* renamed from: b */
    private final long f58569b;

    /* renamed from: c */
    private final long f58570c;

    public InsufficientDiskSpaceException(long j, long j2) {
        this(j, j2, new Throwable());
    }

    public InsufficientDiskSpaceException(long j, long j2, Throwable th) {
        super(th);
        this.f58569b = j;
        this.f58570c = j2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return String.format(Locale.ENGLISH, "Insufficient disk space, estimated file size in bytes %d, available disk space in bytes %d", Long.valueOf(this.f58569b), Long.valueOf(this.f58570c));
    }
}
