package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzean.class */
public final class zzean<P> {

    /* renamed from: a */
    public final P f27969a;

    /* renamed from: b */
    public final byte[] f27970b;

    /* renamed from: c */
    public final zzefc f27971c;

    /* renamed from: d */
    public final zzefv f27972d;

    public zzean(P p, byte[] bArr, zzefc zzefcVar, zzefv zzefvVar, int i) {
        this.f27969a = p;
        this.f27970b = Arrays.copyOf(bArr, bArr.length);
        this.f27971c = zzefcVar;
        this.f27972d = zzefvVar;
    }

    /* renamed from: a */
    public final P m12940a() {
        return this.f27969a;
    }

    /* renamed from: b */
    public final zzefc m12939b() {
        return this.f27971c;
    }

    /* renamed from: c */
    public final zzefv m12938c() {
        return this.f27972d;
    }

    /* renamed from: d */
    public final byte[] m12937d() {
        byte[] bArr = this.f27970b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
