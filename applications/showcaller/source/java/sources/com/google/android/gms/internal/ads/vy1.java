package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vy1.class */
public final class vy1 implements cj3<uy1> {

    /* renamed from: a */
    private final pj3<Context> f31401a;

    /* renamed from: b */
    private final pj3<zzcgz> f31402b;

    /* renamed from: c */
    private final pj3<xj2> f31403c;

    /* renamed from: d */
    private final pj3<Executor> f31404d;

    /* renamed from: e */
    private final pj3<jc1> f31405e;

    /* renamed from: f */
    private final pj3<bl1> f31406f;

    /* renamed from: g */
    private final pj3<q20> f31407g;

    public vy1(pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<xj2> pj3Var3, pj3<Executor> pj3Var4, pj3<jc1> pj3Var5, pj3<bl1> pj3Var6, pj3<q20> pj3Var7) {
        this.f31401a = pj3Var;
        this.f31402b = pj3Var2;
        this.f31403c = pj3Var3;
        this.f31404d = pj3Var4;
        this.f31405e = pj3Var5;
        this.f31406f = pj3Var6;
        this.f31407g = pj3Var7;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new uy1(this.f31401a.mo8141b(), ((gq0) this.f31402b).m14874a(), ((o21) this.f31403c).m12759a(), this.f31404d.mo8141b(), this.f31405e.mo8141b(), this.f31406f.mo8141b(), new q20());
    }
}
