package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djg.class */
public final class djg extends djz {

    /* renamed from: d */
    private static volatile Long f14475d = null;

    /* renamed from: e */
    private static final Object f14476e = new Object();

    public djg(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (f14475d == null) {
            synchronized (f14476e) {
                if (f14475d == null) {
                    f14475d = (Long) this.f14502c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14501b) {
            this.f14501b.m12552w(f14475d.longValue());
        }
    }
}
