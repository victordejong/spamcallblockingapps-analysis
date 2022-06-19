package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n01.class */
public final class n01 implements cj3<ja1<ua1>> {

    /* renamed from: a */
    private final pj3<ua1> f26943a;

    /* renamed from: b */
    private final pj3<Executor> f26944b;

    public n01(pj3<ua1> pj3Var, pj3<Executor> pj3Var2) {
        this.f26943a = pj3Var;
        this.f26944b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ua1 mo8141b = this.f26943a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
