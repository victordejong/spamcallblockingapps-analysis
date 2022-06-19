package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uu0.class */
public final class uu0 implements cj3<tu0> {

    /* renamed from: a */
    private final pj3<Context> f30966a;

    /* renamed from: b */
    private final pj3<Executor> f30967b;

    /* renamed from: c */
    private final pj3<Executor> f30968c;

    /* renamed from: d */
    private final pj3<ScheduledExecutorService> f30969d;

    /* renamed from: e */
    private final pj3<rj2> f30970e;

    /* renamed from: f */
    private final pj3<ej2> f30971f;

    /* renamed from: g */
    private final pj3<yo2> f30972g;

    /* renamed from: h */
    private final pj3<hk2> f30973h;

    /* renamed from: i */
    private final pj3<View> f30974i;

    /* renamed from: j */
    private final pj3<C7016u> f30975j;

    /* renamed from: k */
    private final pj3<C6680kx> f30976k;

    /* renamed from: l */
    private final pj3<C6754mx> f30977l;

    public uu0(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<Executor> pj3Var3, pj3<ScheduledExecutorService> pj3Var4, pj3<rj2> pj3Var5, pj3<ej2> pj3Var6, pj3<yo2> pj3Var7, pj3<hk2> pj3Var8, pj3<View> pj3Var9, pj3<C7016u> pj3Var10, pj3<C6680kx> pj3Var11, pj3<C6754mx> pj3Var12) {
        this.f30966a = pj3Var;
        this.f30967b = pj3Var2;
        this.f30968c = pj3Var3;
        this.f30969d = pj3Var4;
        this.f30970e = pj3Var5;
        this.f30971f = pj3Var6;
        this.f30972g = pj3Var7;
        this.f30973h = pj3Var8;
        this.f30974i = pj3Var9;
        this.f30975j = pj3Var10;
        this.f30976k = pj3Var11;
        this.f30977l = pj3Var12;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context m16321a = ((bl2) this.f30966a).m16321a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new tu0(m16321a, s03Var, this.f30968c.mo8141b(), this.f30969d.mo8141b(), ((qz0) this.f30970e).m11755a(), ((nz0) this.f30971f).m12777a(), this.f30972g.mo8141b(), this.f30973h.mo8141b(), this.f30974i.mo8141b(), this.f30975j.mo8141b(), this.f30976k.mo8141b(), new C6754mx(), null);
    }
}
