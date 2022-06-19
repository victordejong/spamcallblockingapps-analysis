package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bx0.class */
public final class bx0 implements cj3<ax0> {

    /* renamed from: a */
    private final pj3<wy0> f21005a;

    /* renamed from: b */
    private final pj3<Context> f21006b;

    /* renamed from: c */
    private final pj3<hj2> f21007c;

    /* renamed from: d */
    private final pj3<View> f21008d;

    /* renamed from: e */
    private final pj3<wn0> f21009e;

    /* renamed from: f */
    private final pj3<vy0> f21010f;

    /* renamed from: g */
    private final pj3<cf1> f21011g;

    /* renamed from: h */
    private final pj3<sa1> f21012h;

    /* renamed from: i */
    private final pj3<a32> f21013i;

    /* renamed from: j */
    private final pj3<Executor> f21014j;

    public bx0(pj3<wy0> pj3Var, pj3<Context> pj3Var2, pj3<hj2> pj3Var3, pj3<View> pj3Var4, pj3<wn0> pj3Var5, pj3<vy0> pj3Var6, pj3<cf1> pj3Var7, pj3<sa1> pj3Var8, pj3<a32> pj3Var9, pj3<Executor> pj3Var10) {
        this.f21005a = pj3Var;
        this.f21006b = pj3Var2;
        this.f21007c = pj3Var3;
        this.f21008d = pj3Var4;
        this.f21009e = pj3Var5;
        this.f21010f = pj3Var6;
        this.f21011g = pj3Var7;
        this.f21012h = pj3Var8;
        this.f21013i = pj3Var9;
        this.f21014j = pj3Var10;
    }

    /* renamed from: c */
    public static ax0 m16182c(wy0 wy0Var, Context context, hj2 hj2Var, View view, wn0 wn0Var, vy0 vy0Var, cf1 cf1Var, sa1 sa1Var, vi3<a32> vi3Var, Executor executor) {
        return new ax0(wy0Var, context, hj2Var, view, wn0Var, vy0Var, cf1Var, sa1Var, vi3Var, executor);
    }

    /* renamed from: a */
    public final ax0 mo8141b() {
        return new ax0(((u01) this.f21005a).mo8141b(), this.f21006b.mo8141b(), ((hx0) this.f21007c).m14526a(), ((gx0) this.f21008d).m14792a(), ((tx0) this.f21009e).m10477a(), ((ix0) this.f21010f).m14257a(), ((cd1) this.f21011g).m16080a(), this.f21012h.mo8141b(), aj3.m16583c(this.f21013i), this.f21014j.mo8141b());
    }
}
