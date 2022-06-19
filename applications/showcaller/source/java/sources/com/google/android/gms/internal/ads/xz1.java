package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xz1.class */
public final class xz1 extends wz1<xw0> {

    /* renamed from: a */
    private final sp0 f32361a;

    /* renamed from: b */
    private final h21 f32362b;

    /* renamed from: c */
    private final g22 f32363c;

    /* renamed from: d */
    private final p81 f32364d;

    /* renamed from: e */
    private final zc1 f32365e;

    /* renamed from: f */
    private final o51 f32366f;

    /* renamed from: g */
    private final ViewGroup f32367g;

    public xz1(sp0 sp0Var, h21 h21Var, g22 g22Var, p81 p81Var, zc1 zc1Var, o51 o51Var, ViewGroup viewGroup) {
        this.f32361a = sp0Var;
        this.f32362b = h21Var;
        this.f32363c = g22Var;
        this.f32364d = p81Var;
        this.f32365e = zc1Var;
        this.f32366f = o51Var;
        this.f32367g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.wz1
    /* renamed from: c */
    protected final r03<xw0> mo8124c(xj2 xj2Var, Bundle bundle) {
        ux0 mo10952n = this.f32361a.mo10952n();
        h21 h21Var = this.f32362b;
        h21Var.m14758f(xj2Var);
        h21Var.m14757g(bundle);
        mo10952n.mo10154p(h21Var.m14756h());
        mo10952n.mo10153q(this.f32364d);
        mo10952n.mo10155m(this.f32363c);
        mo10952n.mo10156h(this.f32365e);
        mo10952n.mo10157g(new ry0(this.f32366f));
        mo10952n.mo10152t(new uw0(this.f32367g));
        b01<xw0> mo9842b = mo10952n.zza().mo9842b();
        return mo9842b.m16459d(mo9842b.m16460c());
    }
}
