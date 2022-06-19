package com.amazonaws.services.p101s3;
/* renamed from: com.amazonaws.services.s3.S3ClientOptions */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/S3ClientOptions.class */
public class S3ClientOptions {

    /* renamed from: a */
    public boolean f12307a;

    /* renamed from: b */
    boolean f12308b;

    /* renamed from: c */
    final boolean f12309c;

    /* renamed from: d */
    final boolean f12310d;

    /* renamed from: e */
    private final boolean f12311e;

    /* renamed from: f */
    private final boolean f12312f;

    @Deprecated
    public S3ClientOptions() {
        this.f12307a = false;
        this.f12308b = false;
        this.f12311e = false;
        this.f12309c = false;
        this.f12312f = false;
        this.f12310d = false;
    }

    @Deprecated
    public S3ClientOptions(S3ClientOptions s3ClientOptions) {
        this.f12307a = s3ClientOptions.f12307a;
        this.f12308b = s3ClientOptions.f12308b;
        this.f12311e = s3ClientOptions.f12311e;
        this.f12309c = s3ClientOptions.f12309c;
        this.f12312f = s3ClientOptions.f12312f;
        this.f12310d = s3ClientOptions.f12310d;
    }

    private S3ClientOptions(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f12307a = z;
        this.f12308b = z2;
        this.f12311e = z3;
        this.f12309c = z4;
        this.f12312f = z5;
        this.f12310d = z6;
    }
}
