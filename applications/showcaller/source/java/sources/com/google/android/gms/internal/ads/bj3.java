package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bj3.class */
public final class bj3 implements bm3 {

    /* renamed from: a */
    public final bm3 f20494a;

    /* renamed from: b */
    private boolean f20495b;

    /* renamed from: c */
    final /* synthetic */ sj3 f20496c;

    public bj3(sj3 sj3Var, bm3 bm3Var) {
        this.f20496c = sj3Var;
        this.f20494a = bm3Var;
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: a */
    public final int mo8345a(long j) {
        if (this.f20496c.m11002o()) {
            return -3;
        }
        return this.f20494a.mo8345a(j);
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: b */
    public final boolean mo8344b() {
        return !this.f20496c.m11002o() && this.f20494a.mo8344b();
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: c */
    public final void mo8343c() {
        this.f20494a.mo8343c();
    }

    @Override // com.google.android.gms.internal.ads.bm3
    /* renamed from: d */
    public final int mo8342d(C7058v4 c7058v4, C7205z3 c7205z3, int i) {
        if (this.f20496c.m11002o()) {
            return -3;
        }
        if (this.f20495b) {
            c7205z3.m16710f(4);
            return -4;
        }
        int mo8342d = this.f20494a.mo8342d(c7058v4, c7205z3, i);
        if (mo8342d != -5) {
            sj3 sj3Var = this.f20496c;
            long j = sj3Var.f29551h;
            if (j == Long.MIN_VALUE || ((mo8342d != -4 || c7205z3.f32800e < j) && !(mo8342d == -3 && sj3Var.mo8800f() == Long.MIN_VALUE && !c7205z3.f32799d))) {
                return mo8342d;
            }
            c7205z3.mo8537a();
            c7205z3.m16710f(4);
            this.f20495b = true;
            return -4;
        }
        C7021u4 c7021u4 = c7058v4.f31066a;
        Objects.requireNonNull(c7021u4);
        int i2 = c7021u4.f30495D;
        int i3 = 0;
        int i4 = i2;
        if (i2 == 0) {
            if (c7021u4.f30496E == 0) {
                return -5;
            }
            i4 = 0;
        }
        if (this.f20496c.f29551h == Long.MIN_VALUE) {
            i3 = c7021u4.f30496E;
        }
        C6947s4 m10418a = c7021u4.m10418a();
        m10418a.m11172E(i4);
        m10418a.m11171F(i3);
        c7058v4.f31066a = m10418a.m11168I();
        return -5;
    }

    /* renamed from: e */
    public final void m16329e() {
        this.f20495b = false;
    }
}
