package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zr1.class */
public final class zr1 implements cj3<yr1> {

    /* renamed from: a */
    private final pj3<xj2> f33379a;

    /* renamed from: b */
    private final pj3<yq1> f33380b;

    /* renamed from: c */
    private final pj3<s03> f33381c;

    /* renamed from: d */
    private final pj3<ScheduledExecutorService> f33382d;

    /* renamed from: e */
    private final pj3<gv1> f33383e;

    public zr1(pj3<xj2> pj3Var, pj3<yq1> pj3Var2, pj3<s03> pj3Var3, pj3<ScheduledExecutorService> pj3Var4, pj3<gv1> pj3Var5) {
        this.f33379a = pj3Var;
        this.f33380b = pj3Var2;
        this.f33381c = pj3Var3;
        this.f33382d = pj3Var4;
        this.f33383e = pj3Var5;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        xj2 m12759a = ((o21) this.f33379a).m12759a();
        yq1 mo8141b = ((zq1) this.f33380b).mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new yr1(m12759a, mo8141b, s03Var, this.f33382d.mo8141b(), this.f33383e.mo8141b());
    }
}
