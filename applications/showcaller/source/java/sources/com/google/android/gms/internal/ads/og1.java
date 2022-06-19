package com.google.android.gms.internal.ads;

import p020b.p036e.C1489a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/og1.class */
public final class og1 implements s31 {

    /* renamed from: d */
    private final re1 f27526d;

    /* renamed from: e */
    private final we1 f27527e;

    public og1(re1 re1Var, we1 we1Var) {
        this.f27526d = re1Var;
        this.f27527e = we1Var;
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        if (this.f27526d.m11492u() == null) {
            return;
        }
        wn0 m11493t = this.f27526d.m11493t();
        wn0 m11495r = this.f27526d.m11495r();
        if (m11493t == null) {
            m11493t = m11495r != null ? m11495r : null;
        }
        if (!this.f27527e.mo9598d() || m11493t == null) {
            return;
        }
        m11493t.mo7959D0("onSdkImpression", new C1489a());
    }
}
