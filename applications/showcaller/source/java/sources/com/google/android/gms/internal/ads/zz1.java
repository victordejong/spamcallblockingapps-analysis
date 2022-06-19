package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zz1.class */
public final class zz1 extends wz1<lb1> {

    /* renamed from: a */
    private final sp0 f33461a;

    /* renamed from: b */
    private final h21 f33462b;

    /* renamed from: c */
    private final g22 f33463c;

    /* renamed from: d */
    private final p81 f33464d;

    public zz1(sp0 sp0Var, h21 h21Var, g22 g22Var, p81 p81Var) {
        this.f33461a = sp0Var;
        this.f33462b = h21Var;
        this.f33463c = g22Var;
        this.f33464d = p81Var;
    }

    @Override // com.google.android.gms.internal.ads.wz1
    /* renamed from: c */
    protected final r03<lb1> mo8124c(xj2 xj2Var, Bundle bundle) {
        ic1 mo10947s = this.f33461a.mo10947s();
        h21 h21Var = this.f33462b;
        h21Var.m14758f(xj2Var);
        h21Var.m14757g(bundle);
        mo10947s.mo10923a(h21Var.m14756h());
        mo10947s.mo10922i(this.f33464d);
        mo10947s.mo10921r(this.f33463c);
        b01<lb1> mo10543b = mo10947s.zza().mo10543b();
        return mo10543b.m16459d(mo10543b.m16460c());
    }
}
