package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djk.class */
public final class djk extends djz {

    /* renamed from: d */
    private static volatile Long f14479d = null;

    /* renamed from: e */
    private static final Object f14480e = new Object();

    public djk(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (f14479d == null) {
            synchronized (f14480e) {
                if (f14479d == null) {
                    f14479d = (Long) this.f14502c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14501b) {
            this.f14501b.m12564k(f14479d.longValue());
        }
    }
}
