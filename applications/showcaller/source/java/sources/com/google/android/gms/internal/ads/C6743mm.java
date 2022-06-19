package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.mm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mm.class */
public final class C6743mm {

    /* renamed from: a */
    private final InputStream f26652a;

    /* renamed from: b */
    private final boolean f26653b;

    /* renamed from: c */
    private final boolean f26654c;

    /* renamed from: d */
    private final long f26655d;

    /* renamed from: e */
    private final boolean f26656e;

    private C6743mm(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        this.f26652a = inputStream;
        this.f26653b = z;
        this.f26654c = z2;
        this.f26655d = j;
        this.f26656e = z3;
    }

    /* renamed from: a */
    public static C6743mm m13160a(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        return new C6743mm(inputStream, z, z2, j, z3);
    }

    /* renamed from: b */
    public final InputStream m13159b() {
        return this.f26652a;
    }

    /* renamed from: c */
    public final boolean m13158c() {
        return this.f26653b;
    }

    /* renamed from: d */
    public final boolean m13157d() {
        return this.f26654c;
    }

    /* renamed from: e */
    public final long m13156e() {
        return this.f26655d;
    }

    /* renamed from: f */
    public final boolean m13155f() {
        return this.f26656e;
    }
}
