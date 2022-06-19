package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wp1.class */
public final class wp1 implements cj3<vp1> {

    /* renamed from: a */
    private final pj3<Executor> f31656a;

    /* renamed from: b */
    private final pj3<Context> f31657b;

    /* renamed from: c */
    private final pj3<WeakReference<Context>> f31658c;

    /* renamed from: d */
    private final pj3<Executor> f31659d;

    /* renamed from: e */
    private final pj3<ol1> f31660e;

    /* renamed from: f */
    private final pj3<ScheduledExecutorService> f31661f;

    /* renamed from: g */
    private final pj3<ao1> f31662g;

    /* renamed from: h */
    private final pj3<zzcgz> f31663h;

    /* renamed from: i */
    private final pj3<u91> f31664i;

    public wp1(pj3<Executor> pj3Var, pj3<Context> pj3Var2, pj3<WeakReference<Context>> pj3Var3, pj3<Executor> pj3Var4, pj3<ol1> pj3Var5, pj3<ScheduledExecutorService> pj3Var6, pj3<ao1> pj3Var7, pj3<zzcgz> pj3Var8, pj3<u91> pj3Var9) {
        this.f31656a = pj3Var;
        this.f31657b = pj3Var2;
        this.f31658c = pj3Var3;
        this.f31659d = pj3Var4;
        this.f31660e = pj3Var5;
        this.f31661f = pj3Var6;
        this.f31662g = pj3Var7;
        this.f31663h = pj3Var8;
        this.f31664i = pj3Var9;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Executor mo8141b = this.f31656a.mo8141b();
        Context m9095a = ((xp0) this.f31657b).m9095a();
        WeakReference<Context> m8745a = ((yp0) this.f31658c).m8745a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new vp1(mo8141b, m9095a, m8745a, s03Var, this.f31660e.mo8141b(), this.f31661f.mo8141b(), this.f31662g.mo8141b(), ((gq0) this.f31663h).m14874a(), ((v91) this.f31664i).mo8141b());
    }
}
