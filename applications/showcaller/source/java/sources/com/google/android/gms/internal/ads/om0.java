package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/om0.class */
public final class om0 extends km0 {
    public om0(kk0 kk0Var) {
        super(kk0Var);
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: h */
    public final boolean mo10625h(String str) {
        String m9174d = xh0.m9174d(str);
        kk0 kk0Var = this.f25258f.get();
        if (kk0Var != null && m9174d != null) {
            kk0Var.mo7954G(m9174d, this);
        }
        ei0.m15464f("VideoStreamNoopCache is doing nothing.");
        m13852u(str, m9174d, "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: o */
    public final void mo10618o() {
    }
}
