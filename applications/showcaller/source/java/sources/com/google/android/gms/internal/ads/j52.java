package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j52.class */
public final class j52 implements cj3<i52> {

    /* renamed from: a */
    private final pj3<r03<String>> f24791a;

    /* renamed from: b */
    private final pj3<Executor> f24792b;

    public j52(pj3<r03<String>> pj3Var, pj3<Executor> pj3Var2) {
        this.f24791a = pj3Var;
        this.f24792b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        r03<String> mo8141b = this.f24791a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new i52(mo8141b, s03Var);
    }
}
