package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y11.class */
public final class y11 implements cj3<x11> {

    /* renamed from: a */
    private final pj3<q31> f32388a;

    /* renamed from: b */
    private final pj3<ej2> f32389b;

    /* renamed from: c */
    private final pj3<ScheduledExecutorService> f32390c;

    /* renamed from: d */
    private final pj3<Executor> f32391d;

    public y11(pj3<q31> pj3Var, pj3<ej2> pj3Var2, pj3<ScheduledExecutorService> pj3Var3, pj3<Executor> pj3Var4) {
        this.f32388a = pj3Var;
        this.f32389b = pj3Var2;
        this.f32390c = pj3Var3;
        this.f32391d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        q31 mo8141b = this.f32388a.mo8141b();
        ej2 m12777a = ((nz0) this.f32389b).m12777a();
        ScheduledExecutorService mo8141b2 = this.f32390c.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new x11(mo8141b, m12777a, mo8141b2, s03Var);
    }
}
