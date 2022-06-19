package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j11.class */
public final class j11 implements cj3<ja1<s31>> {

    /* renamed from: a */
    private final pj3<cn1> f24754a;

    /* renamed from: b */
    private final pj3<Executor> f24755b;

    /* renamed from: c */
    private final pj3<ju1> f24756c;

    public j11(pj3<cn1> pj3Var, pj3<Executor> pj3Var2, pj3<ju1> pj3Var3) {
        this.f24754a = pj3Var;
        this.f24755b = pj3Var2;
        this.f24756c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        cn1 mo8141b = this.f24754a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue() ? new ja1(this.f24756c.mo8141b(), s03Var) : new ja1(mo8141b, s03Var);
    }
}
