package com.google.android.gms.internal.ads;

import com.mopub.volley.DefaultRetryPolicy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eek.class */
public final class eek implements AbstractC12650iy {

    /* renamed from: a */
    private int f48877a;

    /* renamed from: b */
    private int f48878b;

    /* renamed from: c */
    private final int f48879c;

    /* renamed from: d */
    private final float f48880d;

    public eek() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    private eek(int i, int i2, float f) {
        this.f48877a = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.f48879c = 1;
        this.f48880d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12650iy
    /* renamed from: a */
    public final int mo14594a() {
        return this.f48877a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12650iy
    /* renamed from: a */
    public final void mo14593a(zzap zzapVar) throws zzap {
        boolean z = true;
        int i = this.f48878b + 1;
        this.f48878b = i;
        int i2 = this.f48877a;
        this.f48877a = i2 + ((int) (i2 * this.f48880d));
        if (i > this.f48879c) {
            z = false;
        }
        if (z) {
            return;
        }
        throw zzapVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12650iy
    /* renamed from: b */
    public final int mo14592b() {
        return this.f48878b;
    }
}
