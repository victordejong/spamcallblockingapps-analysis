package com.amazonaws.services.s3;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/S3ClientOptions.class */
public class S3ClientOptions {

    /* renamed from: a  reason: collision with root package name */
    public boolean f6777a;

    /* renamed from: b  reason: collision with root package name */
    boolean f6778b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f6779c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f6780d;
    private final boolean e;
    private final boolean f;

    @Deprecated
    public S3ClientOptions() {
        this.f6777a = false;
        this.f6778b = false;
        this.e = false;
        this.f6779c = false;
        this.f = false;
        this.f6780d = false;
    }

    @Deprecated
    public S3ClientOptions(S3ClientOptions s3ClientOptions) {
        this.f6777a = s3ClientOptions.f6777a;
        this.f6778b = s3ClientOptions.f6778b;
        this.e = s3ClientOptions.e;
        this.f6779c = s3ClientOptions.f6779c;
        this.f = s3ClientOptions.f;
        this.f6780d = s3ClientOptions.f6780d;
    }

    private S3ClientOptions(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f6777a = z;
        this.f6778b = z2;
        this.e = z3;
        this.f6779c = z4;
        this.f = z5;
        this.f6780d = z6;
    }
}
