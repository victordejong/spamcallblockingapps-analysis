package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hf1.class */
public final class hf1 implements cj3<ja1<k51>> {

    /* renamed from: a */
    private final pj3<d42> f23887a;

    /* renamed from: b */
    private final pj3<Executor> f23888b;

    public hf1(pj3<d42> pj3Var, pj3<Executor> pj3Var2) {
        this.f23887a = pj3Var;
        this.f23888b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        d42 mo8141b = this.f23887a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
