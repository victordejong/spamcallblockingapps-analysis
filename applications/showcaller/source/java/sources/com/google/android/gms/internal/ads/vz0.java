package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vz0.class */
public final class vz0 implements cj3<ja1<y41>> {

    /* renamed from: a */
    private final pj3<i51> f31413a;

    /* renamed from: b */
    private final pj3<Executor> f31414b;

    public vz0(pj3<i51> pj3Var, pj3<Executor> pj3Var2) {
        this.f31413a = pj3Var;
        this.f31414b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        i51 mo8141b = this.f31413a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
