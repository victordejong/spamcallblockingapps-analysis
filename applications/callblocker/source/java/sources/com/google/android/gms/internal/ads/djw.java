package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djw.class */
public final class djw extends djz {

    /* renamed from: d */
    private static volatile Long f14489d = null;

    /* renamed from: e */
    private static final Object f14490e = new Object();

    public djw(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (f14489d == null) {
            synchronized (f14490e) {
                if (f14489d == null) {
                    f14489d = (Long) this.f14502c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14501b) {
            this.f14501b.m12560o(f14489d.longValue());
        }
    }
}
