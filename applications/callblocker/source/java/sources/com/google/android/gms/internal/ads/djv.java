package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djv.class */
public final class djv extends djz {
    public djv(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        this.f14501b.m12589a(bce.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.f14502c.invoke(null, this.f14500a.m9422a())).booleanValue();
        synchronized (this.f14501b) {
            if (booleanValue) {
                this.f14501b.m12589a(bce.ENUM_TRUE);
            } else {
                this.f14501b.m12589a(bce.ENUM_FALSE);
            }
        }
    }
}
