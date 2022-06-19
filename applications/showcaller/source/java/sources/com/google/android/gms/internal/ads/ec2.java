package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ec2.class */
public final class ec2 implements cj3<cc2> {

    /* renamed from: a */
    private final pj3<gh0> f22060a;

    /* renamed from: b */
    private final pj3<Integer> f22061b;

    /* renamed from: c */
    private final pj3<Context> f22062c;

    /* renamed from: d */
    private final pj3<ph0> f22063d;

    /* renamed from: e */
    private final pj3<ScheduledExecutorService> f22064e;

    /* renamed from: f */
    private final pj3<Executor> f22065f;

    /* renamed from: g */
    private final pj3<String> f22066g;

    public ec2(pj3<gh0> pj3Var, pj3<Integer> pj3Var2, pj3<Context> pj3Var3, pj3<ph0> pj3Var4, pj3<ScheduledExecutorService> pj3Var5, pj3<Executor> pj3Var6, pj3<String> pj3Var7) {
        this.f22060a = pj3Var;
        this.f22061b = pj3Var2;
        this.f22062c = pj3Var3;
        this.f22063d = pj3Var4;
        this.f22064e = pj3Var5;
        this.f22065f = pj3Var6;
        this.f22066g = pj3Var7;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        gh0 gh0Var = new gh0();
        int intValue = ((zc2) this.f22061b).mo8141b().intValue();
        Context m9095a = ((xp0) this.f22062c).m9095a();
        ph0 mo8141b = this.f22063d.mo8141b();
        ScheduledExecutorService mo8141b2 = this.f22064e.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new cc2(gh0Var, intValue, m9095a, mo8141b, mo8141b2, s03Var, ((yc2) this.f22066g).m8860a(), null);
    }
}
