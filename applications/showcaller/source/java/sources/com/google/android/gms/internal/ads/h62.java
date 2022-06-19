package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h62.class */
public final class h62 implements cj3<g62> {

    /* renamed from: a */
    private final pj3<Executor> f23813a;

    /* renamed from: b */
    private final pj3<ph0> f23814b;

    public h62(pj3<Executor> pj3Var, pj3<ph0> pj3Var2) {
        this.f23813a = pj3Var;
        this.f23814b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new g62(s03Var, this.f23814b.mo8141b());
    }
}
