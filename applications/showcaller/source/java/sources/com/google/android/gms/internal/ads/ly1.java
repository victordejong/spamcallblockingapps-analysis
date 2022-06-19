package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ly1.class */
public final class ly1 implements cj3<ky1> {

    /* renamed from: a */
    private final pj3<vx0> f26342a;

    /* renamed from: b */
    private final pj3<rx1> f26343b;

    /* renamed from: c */
    private final pj3<a31> f26344c;

    /* renamed from: d */
    private final pj3<ScheduledExecutorService> f26345d;

    /* renamed from: e */
    private final pj3<s03> f26346e;

    public ly1(pj3<vx0> pj3Var, pj3<rx1> pj3Var2, pj3<a31> pj3Var3, pj3<ScheduledExecutorService> pj3Var4, pj3<s03> pj3Var5) {
        this.f26342a = pj3Var;
        this.f26343b = pj3Var2;
        this.f26344c = pj3Var3;
        this.f26345d = pj3Var4;
        this.f26346e = pj3Var5;
    }

    /* renamed from: a */
    public final ky1 mo8141b() {
        vx0 mo8141b = this.f26342a.mo8141b();
        rx1 mo8141b2 = ((sx1) this.f26343b).mo8141b();
        a31 mo8141b3 = this.f26344c.mo8141b();
        ScheduledExecutorService mo8141b4 = this.f26345d.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ky1(mo8141b, mo8141b2, mo8141b3, mo8141b4, s03Var);
    }
}
