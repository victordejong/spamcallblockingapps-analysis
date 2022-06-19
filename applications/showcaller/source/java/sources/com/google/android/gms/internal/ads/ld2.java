package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ld2.class */
public final class ld2 implements cj3<jd2> {

    /* renamed from: a */
    private final pj3<ph0> f26051a;

    /* renamed from: b */
    private final pj3<Boolean> f26052b;

    /* renamed from: c */
    private final pj3<eh0> f26053c;

    /* renamed from: d */
    private final pj3<s03> f26054d;

    /* renamed from: e */
    private final pj3<String> f26055e;

    /* renamed from: f */
    private final pj3<ScheduledExecutorService> f26056f;

    public ld2(pj3<ph0> pj3Var, pj3<Boolean> pj3Var2, pj3<eh0> pj3Var3, pj3<s03> pj3Var4, pj3<String> pj3Var5, pj3<ScheduledExecutorService> pj3Var6) {
        this.f26051a = pj3Var;
        this.f26052b = pj3Var2;
        this.f26053c = pj3Var3;
        this.f26054d = pj3Var4;
        this.f26055e = pj3Var5;
        this.f26056f = pj3Var6;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ph0 mo8141b = this.f26051a.mo8141b();
        boolean booleanValue = ((bd2) this.f26052b).mo8141b().booleanValue();
        eh0 eh0Var = new eh0();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new jd2(mo8141b, booleanValue, eh0Var, s03Var, ((yc2) this.f26055e).m8860a(), this.f26056f.mo8141b(), null);
    }
}
