package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ob2.class */
public final class ob2 implements cj3<mb2> {

    /* renamed from: a */
    private final pj3<gh0> f27485a;

    /* renamed from: b */
    private final pj3<Context> f27486b;

    /* renamed from: c */
    private final pj3<ScheduledExecutorService> f27487c;

    /* renamed from: d */
    private final pj3<Executor> f27488d;

    /* renamed from: e */
    private final pj3<Integer> f27489e;

    public ob2(pj3<gh0> pj3Var, pj3<Context> pj3Var2, pj3<ScheduledExecutorService> pj3Var3, pj3<Executor> pj3Var4, pj3<Integer> pj3Var5) {
        this.f27485a = pj3Var;
        this.f27486b = pj3Var2;
        this.f27487c = pj3Var3;
        this.f27488d = pj3Var4;
        this.f27489e = pj3Var5;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        gh0 gh0Var = new gh0();
        Context m9095a = ((xp0) this.f27486b).m9095a();
        ScheduledExecutorService mo8141b = this.f27487c.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new mb2(gh0Var, m9095a, mo8141b, s03Var, ((zc2) this.f27489e).mo8141b().intValue(), null);
    }
}
