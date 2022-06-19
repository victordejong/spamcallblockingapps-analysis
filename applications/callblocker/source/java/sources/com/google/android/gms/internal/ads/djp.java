package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djp.class */
public final class djp extends djz {

    /* renamed from: d */
    private List<Long> f14484d = null;

    public djp(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2) {
        super(dinVar, str, str2, c2799a, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        this.f14501b.m12562m(-1L);
        this.f14501b.m12561n(-1L);
        if (this.f14484d == null) {
            this.f14484d = (List) this.f14502c.invoke(null, this.f14500a.m9422a());
        }
        if (this.f14484d == null || this.f14484d.size() != 2) {
            return;
        }
        synchronized (this.f14501b) {
            this.f14501b.m12562m(this.f14484d.get(0).longValue());
            this.f14501b.m12561n(this.f14484d.get(1).longValue());
        }
    }
}
