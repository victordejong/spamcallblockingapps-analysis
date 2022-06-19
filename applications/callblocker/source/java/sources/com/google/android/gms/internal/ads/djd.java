package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djd.class */
public final class djd extends djz {
    public djd(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        this.f14501b.m12586b(-1L);
        this.f14501b.m12582c(-1L);
        int[] iArr = (int[]) this.f14502c.invoke(null, this.f14500a.m9422a());
        synchronized (this.f14501b) {
            this.f14501b.m12586b(iArr[0]);
            this.f14501b.m12582c(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f14501b.m12600B(iArr[2]);
            }
        }
    }
}
