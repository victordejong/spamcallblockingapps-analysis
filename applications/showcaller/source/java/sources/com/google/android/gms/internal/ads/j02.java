package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j02.class */
public final class j02<AdT> implements cj3<i02<AdT>> {

    /* renamed from: a */
    private final pj3<yn2> f24742a;

    /* renamed from: b */
    private final pj3<e02> f24743b;

    /* renamed from: c */
    private final pj3<a31> f24744c;

    /* renamed from: d */
    private final pj3<yo2> f24745d;

    /* renamed from: e */
    private final pj3<bp2> f24746e;

    /* renamed from: f */
    private final pj3<az0<AdT>> f24747f;

    /* renamed from: g */
    private final pj3<Executor> f24748g;

    /* renamed from: h */
    private final pj3<ScheduledExecutorService> f24749h;

    /* renamed from: i */
    private final pj3<uw1> f24750i;

    public j02(pj3<yn2> pj3Var, pj3<e02> pj3Var2, pj3<a31> pj3Var3, pj3<yo2> pj3Var4, pj3<bp2> pj3Var5, pj3<az0<AdT>> pj3Var6, pj3<Executor> pj3Var7, pj3<ScheduledExecutorService> pj3Var8, pj3<uw1> pj3Var9) {
        this.f24742a = pj3Var;
        this.f24743b = pj3Var2;
        this.f24744c = pj3Var3;
        this.f24745d = pj3Var4;
        this.f24746e = pj3Var5;
        this.f24747f = pj3Var6;
        this.f24748g = pj3Var7;
        this.f24749h = pj3Var8;
        this.f24750i = pj3Var9;
    }

    /* renamed from: a */
    public final i02<AdT> mo8141b() {
        yn2 mo8141b = this.f24742a.mo8141b();
        e02 mo8141b2 = this.f24743b.mo8141b();
        a31 mo8141b3 = this.f24744c.mo8141b();
        yo2 mo8141b4 = this.f24745d.mo8141b();
        bp2 mo8141b5 = this.f24746e.mo8141b();
        az0<AdT> mo8141b6 = this.f24747f.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new i02<>(mo8141b, mo8141b2, mo8141b3, mo8141b4, mo8141b5, mo8141b6, s03Var, this.f24749h.mo8141b(), this.f24750i.mo8141b());
    }
}
