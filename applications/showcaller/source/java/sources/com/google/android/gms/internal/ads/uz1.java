package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uz1.class */
public final class uz1 extends wz1<ez0> {

    /* renamed from: a */
    private final sp0 f31027a;

    /* renamed from: b */
    private final zc1 f31028b;

    /* renamed from: c */
    private final h21 f31029c;

    /* renamed from: d */
    private final p81 f31030d;

    public uz1(sp0 sp0Var, zc1 zc1Var, h21 h21Var, p81 p81Var) {
        this.f31027a = sp0Var;
        this.f31028b = zc1Var;
        this.f31029c = h21Var;
        this.f31030d = p81Var;
    }

    @Override // com.google.android.gms.internal.ads.wz1
    /* renamed from: c */
    protected final r03<ez0> mo8124c(xj2 xj2Var, Bundle bundle) {
        ed1 mo10945u = this.f31027a.mo10945u();
        h21 h21Var = this.f31029c;
        h21Var.m14758f(xj2Var);
        h21Var.m14757g(bundle);
        mo10945u.mo10562k(h21Var.m14756h());
        mo10945u.mo10563j(this.f31030d);
        mo10945u.mo10564f(this.f31028b);
        mo10945u.mo10565e(new uw0(null));
        b01<ez0> mo10228a = mo10945u.zza().mo10228a();
        return mo10228a.m16459d(mo10228a.m16460c());
    }
}
