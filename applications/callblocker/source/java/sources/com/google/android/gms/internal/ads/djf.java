package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djf.class */
public final class djf extends djz {

    /* renamed from: d */
    private long f14474d;

    public djf(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, long j, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 25);
        this.f14474d = j;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        long longValue = ((Long) this.f14502c.invoke(null, new Object[0])).longValue();
        synchronized (this.f14501b) {
            this.f14501b.m12595G(longValue);
            if (this.f14474d != 0) {
                this.f14501b.m12567i(longValue - this.f14474d);
                this.f14501b.m12563l(this.f14474d);
            }
        }
    }
}
