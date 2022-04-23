package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uv2.class */
public final class uv2 {

    /* renamed from: a */
    private final InputStream f8841a;

    /* renamed from: b */
    private final boolean f8842b;

    /* renamed from: c */
    private final boolean f8843c;

    /* renamed from: d */
    private final long f8844d;

    /* renamed from: e */
    private final boolean f8845e;

    private uv2(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        this.f8841a = inputStream;
        this.f8842b = z;
        this.f8843c = z2;
        this.f8844d = j;
        this.f8845e = z3;
    }

    /* renamed from: a */
    public static uv2 m5341a(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        return new uv2(inputStream, z, z2, j, z3);
    }

    /* renamed from: b */
    public final InputStream m5340b() {
        return this.f8841a;
    }

    /* renamed from: c */
    public final boolean m5339c() {
        return this.f8842b;
    }

    /* renamed from: d */
    public final boolean m5338d() {
        return this.f8843c;
    }

    /* renamed from: e */
    public final long m5337e() {
        return this.f8844d;
    }

    /* renamed from: f */
    public final boolean m5336f() {
        return this.f8845e;
    }
}
