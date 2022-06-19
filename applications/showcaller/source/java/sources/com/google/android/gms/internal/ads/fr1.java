package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fr1.class */
public final class fr1 implements cj3<ja1<u51>> {

    /* renamed from: a */
    private final pj3<ts1> f23039a;

    /* renamed from: b */
    private final pj3<Executor> f23040b;

    public fr1(pj3<ts1> pj3Var, pj3<Executor> pj3Var2) {
        this.f23039a = pj3Var;
        this.f23040b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ts1 mo8141b = ((us1) this.f23039a).mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
