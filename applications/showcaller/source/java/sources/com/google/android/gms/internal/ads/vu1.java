package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vu1.class */
public final class vu1 implements cj3<ja1<b31>> {

    /* renamed from: a */
    private final pj3<ev1> f31352a;

    /* renamed from: b */
    private final pj3<Executor> f31353b;

    public vu1(pj3<ev1> pj3Var, pj3<Executor> pj3Var2) {
        this.f31352a = pj3Var;
        this.f31353b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ev1 mo8141b = this.f31352a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
