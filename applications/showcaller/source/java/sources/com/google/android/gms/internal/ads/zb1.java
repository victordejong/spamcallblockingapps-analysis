package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zb1.class */
public final class zb1 implements cj3<ja1<y21>> {

    /* renamed from: a */
    private final pb1 f32853a;

    /* renamed from: b */
    private final pj3<vc1> f32854b;

    /* renamed from: c */
    private final pj3<Executor> f32855c;

    public zb1(pb1 pb1Var, pj3<vc1> pj3Var, pj3<Executor> pj3Var2) {
        this.f32853a = pb1Var;
        this.f32854b = pj3Var;
        this.f32855c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        vc1 mo8141b = this.f32854b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
