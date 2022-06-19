package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fs1.class */
public final class fs1 implements cj3<es1> {

    /* renamed from: a */
    private final pj3<sp0> f23118a;

    /* renamed from: b */
    private final pj3<Context> f23119b;

    /* renamed from: c */
    private final pj3<zzcgz> f23120c;

    /* renamed from: d */
    private final pj3<xj2> f23121d;

    /* renamed from: e */
    private final pj3<Executor> f23122e;

    /* renamed from: f */
    private final pj3<String> f23123f;

    /* renamed from: g */
    private final pj3<s51> f23124g;

    /* renamed from: h */
    private final pj3<w51> f23125h;

    public fs1(pj3<sp0> pj3Var, pj3<Context> pj3Var2, pj3<zzcgz> pj3Var3, pj3<xj2> pj3Var4, pj3<Executor> pj3Var5, pj3<String> pj3Var6, pj3<s51> pj3Var7, pj3<w51> pj3Var8) {
        this.f23118a = pj3Var;
        this.f23119b = pj3Var2;
        this.f23120c = pj3Var3;
        this.f23121d = pj3Var4;
        this.f23122e = pj3Var5;
        this.f23123f = pj3Var6;
        this.f23124g = pj3Var7;
        this.f23125h = pj3Var8;
    }

    /* renamed from: a */
    public final es1 mo8141b() {
        sp0 mo8141b = this.f23118a.mo8141b();
        Context m16321a = ((bl2) this.f23119b).m16321a();
        zzcgz m14874a = ((gq0) this.f23120c).m14874a();
        xj2 m12759a = ((o21) this.f23121d).m12759a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new es1(mo8141b, m16321a, m14874a, m12759a, s03Var, this.f23123f.mo8141b(), ((t51) this.f23124g).mo8141b(), ((y51) this.f23125h).mo8141b());
    }
}
