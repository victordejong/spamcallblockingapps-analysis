package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fa2.class */
public final class fa2 implements cj3<da2> {

    /* renamed from: a */
    private final pj3<s03> f22754a;

    /* renamed from: b */
    private final pj3<ScheduledExecutorService> f22755b;

    /* renamed from: c */
    private final pj3<String> f22756c;

    /* renamed from: d */
    private final pj3<Context> f22757d;

    /* renamed from: e */
    private final pj3<xj2> f22758e;

    /* renamed from: f */
    private final pj3<sp0> f22759f;

    public fa2(pj3<s03> pj3Var, pj3<ScheduledExecutorService> pj3Var2, pj3<String> pj3Var3, pj3<Context> pj3Var4, pj3<xj2> pj3Var5, pj3<sp0> pj3Var6) {
        this.f22754a = pj3Var;
        this.f22755b = pj3Var2;
        this.f22756c = pj3Var3;
        this.f22757d = pj3Var4;
        this.f22758e = pj3Var5;
        this.f22759f = pj3Var6;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new da2(s03Var, this.f22755b.mo8141b(), this.f22756c.mo8141b(), this.f22757d.mo8141b(), ((o21) this.f22758e).m12759a(), this.f22759f.mo8141b());
    }
}
