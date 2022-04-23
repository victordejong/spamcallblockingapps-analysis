package com.google.android.gms.internal.ads;

import com.mopub.volley.DefaultRetryPolicy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eek.class */
public final class eek implements iy {

    /* renamed from: a  reason: collision with root package name */
    private int f27730a;

    /* renamed from: b  reason: collision with root package name */
    private int f27731b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27732c;

    /* renamed from: d  reason: collision with root package name */
    private final float f27733d;

    public eek() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    private eek(int i, int i2, float f) {
        this.f27730a = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.f27732c = 1;
        this.f27733d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final int a() {
        return this.f27730a;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a(zzap zzapVar) throws zzap {
        boolean z = true;
        int i = this.f27731b + 1;
        this.f27731b = i;
        int i2 = this.f27730a;
        this.f27730a = i2 + ((int) (i2 * this.f27733d));
        if (i > this.f27732c) {
            z = false;
        }
        if (!z) {
            throw zzapVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final int b() {
        return this.f27731b;
    }
}
