package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ja2.class */
public final class ja2 implements cj3<ha2> {

    /* renamed from: a */
    private final pj3<lg0> f24832a;

    /* renamed from: b */
    private final pj3<s03> f24833b;

    /* renamed from: c */
    private final pj3<Context> f24834c;

    public ja2(pj3<lg0> pj3Var, pj3<s03> pj3Var2, pj3<Context> pj3Var3) {
        this.f24832a = pj3Var;
        this.f24833b = pj3Var2;
        this.f24834c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        lg0 mo8141b = this.f24832a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ha2(mo8141b, s03Var, ((bl2) this.f24834c).m16321a());
    }
}
