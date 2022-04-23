package com.linkedin.android.litr.exception;

import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/InsufficientDiskSpaceException.class */
public class InsufficientDiskSpaceException extends MediaTransformationException {

    /* renamed from: b  reason: collision with root package name */
    private final long f33729b;

    /* renamed from: c  reason: collision with root package name */
    private final long f33730c;

    public InsufficientDiskSpaceException(long j, long j2) {
        this(j, j2, new Throwable());
    }

    public InsufficientDiskSpaceException(long j, long j2, Throwable th) {
        super(th);
        this.f33729b = j;
        this.f33730c = j2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return String.format(Locale.ENGLISH, "Insufficient disk space, estimated file size in bytes %d, available disk space in bytes %d", Long.valueOf(this.f33729b), Long.valueOf(this.f33730c));
    }
}
