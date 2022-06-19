package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b02.class */
public final class b02 extends wz1<fk1> {

    /* renamed from: a */
    private final sp0 f20233a;

    /* renamed from: b */
    private final h21 f20234b;

    /* renamed from: c */
    private final p81 f20235c;

    public b02(sp0 sp0Var, h21 h21Var, p81 p81Var) {
        this.f20233a = sp0Var;
        this.f20234b = h21Var;
        this.f20235c = p81Var;
    }

    @Override // com.google.android.gms.internal.ads.wz1
    /* renamed from: c */
    protected final r03<fk1> mo8124c(xj2 xj2Var, Bundle bundle) {
        jk1 mo10944v = this.f20233a.mo10944v();
        h21 h21Var = this.f20234b;
        h21Var.m14758f(xj2Var);
        h21Var.m14757g(bundle);
        mo10944v.mo14102o(h21Var.m14756h());
        mo10944v.mo14103l(this.f20235c);
        b01<fk1> mo8231o = mo10944v.zza().mo8231o();
        return mo8231o.m16459d(mo8231o.m16460c());
    }
}
