package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xu1.class */
public final class xu1 implements cj3<ja1<zn2>> {

    /* renamed from: a */
    private final pj3<jv1> f32296a;

    /* renamed from: b */
    private final pj3<Executor> f32297b;

    public xu1(pj3<jv1> pj3Var, pj3<Executor> pj3Var2) {
        this.f32296a = pj3Var;
        this.f32297b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        jv1 mo8141b = ((kv1) this.f32296a).mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
