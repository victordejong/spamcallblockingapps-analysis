package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ade.class */
public final class ade extends acu {
    public ade(abb abbVar) {
        super(abbVar);
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final boolean a(String str) {
        abb abbVar = this.f23120c.get();
        if (abbVar != null) {
            abbVar.a(b(str), this);
        }
        zzd.zzez("VideoStreamNoopCache is doing nothing.");
        a(str, b(str), "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void b() {
    }
}
