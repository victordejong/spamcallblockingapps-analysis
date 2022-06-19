package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gv0.class */
public final class gv0 implements cj3<zu0> {

    /* renamed from: a */
    private final pj3<C6703lj> f23705a;

    /* renamed from: b */
    private final pj3<a70> f23706b;

    /* renamed from: c */
    private final pj3<Executor> f23707c;

    public gv0(pj3<C6703lj> pj3Var, pj3<a70> pj3Var2, pj3<Executor> pj3Var3) {
        this.f23705a = pj3Var;
        this.f23706b = pj3Var2;
        this.f23707c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        C6703lj mo8141b = this.f23705a.mo8141b();
        a70 mo8141b2 = this.f23706b.mo8141b();
        s03 m13154a = mm2.m13154a();
        kj3.m13879b(m13154a);
        return new zu0(mo8141b.m13499d(), mo8141b2, m13154a);
    }
}
