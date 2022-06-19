package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n31.class */
public final class n31 implements cj3<l31> {

    /* renamed from: a */
    private final pj3<k31> f26960a;

    /* renamed from: b */
    private final pj3<Set<ja1<c31>>> f26961b;

    /* renamed from: c */
    private final pj3<Executor> f26962c;

    /* renamed from: d */
    private final pj3<ScheduledExecutorService> f26963d;

    public n31(pj3<k31> pj3Var, pj3<Set<ja1<c31>>> pj3Var2, pj3<Executor> pj3Var3, pj3<ScheduledExecutorService> pj3Var4) {
        this.f26960a = pj3Var;
        this.f26961b = pj3Var2;
        this.f26962c = pj3Var3;
        this.f26963d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        k31 mo8141b = ((m31) this.f26960a).mo8141b();
        Set mo8141b2 = ((nj3) this.f26961b).mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new l31(mo8141b, mo8141b2, s03Var, this.f26963d.mo8141b());
    }
}
