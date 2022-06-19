package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t50.class */
public final class t50 implements xi0 {

    /* renamed from: a */
    final /* synthetic */ c60 f29810a;

    /* renamed from: b */
    final /* synthetic */ d60 f29811b;

    public t50(d60 d60Var, c60 c60Var) {
        this.f29811b = d60Var;
        this.f29810a = c60Var;
    }

    @Override // com.google.android.gms.internal.ads.xi0
    public final void zza() {
        Object obj;
        obj = this.f29811b.f21491a;
        synchronized (obj) {
            this.f29811b.f21498h = 1;
            C5722o1.m17990k("Failed loading new engine. Marking new engine destroyable.");
            this.f29810a.m16114h();
        }
    }
}
