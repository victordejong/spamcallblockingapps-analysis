package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ur1.class */
public final class ur1 implements cj3<tr1> {

    /* renamed from: a */
    private final pj3<ScheduledExecutorService> f30949a;

    /* renamed from: b */
    private final pj3<s03> f30950b;

    /* renamed from: c */
    private final pj3<ns1> f30951c;

    /* renamed from: d */
    private final pj3<bu1> f30952d;

    public ur1(pj3<ScheduledExecutorService> pj3Var, pj3<s03> pj3Var2, pj3<ns1> pj3Var3, pj3<bu1> pj3Var4) {
        this.f30949a = pj3Var;
        this.f30950b = pj3Var2;
        this.f30951c = pj3Var3;
        this.f30952d = pj3Var4;
    }

    /* renamed from: a */
    public final tr1 mo8141b() {
        ScheduledExecutorService mo8141b = this.f30949a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new tr1(mo8141b, s03Var, ((os1) this.f30951c).mo8141b(), aj3.m16583c(this.f30952d));
    }
}
