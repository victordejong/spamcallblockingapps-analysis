package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ade.class */
public final class ade extends acu {
    public ade(abb abbVar) {
        super(abbVar);
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: a */
    public final boolean mo18858a(String str) {
        abb abbVar = this.f39926c.get();
        if (abbVar != null) {
            abbVar.mo13773a(mo18856b(str), this);
        }
        zzd.zzez("VideoStreamNoopCache is doing nothing.");
        m18873a(str, mo18856b(str), "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final void mo18857b() {
    }
}
