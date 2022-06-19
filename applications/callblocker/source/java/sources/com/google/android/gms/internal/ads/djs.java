package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djs.class */
public final class djs extends djz {

    /* renamed from: d */
    private final boolean f14486d;

    public djs(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 61);
        this.f14486d = dinVar.m9400j();
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        long longValue = ((Long) this.f14502c.invoke(null, this.f14500a.m9422a(), Boolean.valueOf(this.f14486d))).longValue();
        synchronized (this.f14501b) {
            this.f14501b.m12598D(longValue);
        }
    }
}
