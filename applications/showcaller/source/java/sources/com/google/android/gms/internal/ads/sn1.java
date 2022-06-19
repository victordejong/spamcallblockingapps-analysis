package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sn1.class */
public final class sn1 implements cj3<rn1> {

    /* renamed from: a */
    private final pj3<wn1> f29584a;

    /* renamed from: b */
    private final pj3<Executor> f29585b;

    public sn1(pj3<wn1> pj3Var, pj3<Executor> pj3Var2) {
        this.f29584a = pj3Var;
        this.f29585b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        wn1 mo8141b = this.f29584a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new rn1(mo8141b, s03Var);
    }
}
