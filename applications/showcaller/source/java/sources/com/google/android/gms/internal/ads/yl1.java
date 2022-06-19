package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yl1.class */
public final class yl1 implements cj3<ja1<AbstractC6673kq>> {

    /* renamed from: a */
    private final pj3<nm1> f32540a;

    /* renamed from: b */
    private final pj3<Executor> f32541b;

    public yl1(pj3<nm1> pj3Var, pj3<Executor> pj3Var2) {
        this.f32540a = pj3Var;
        this.f32541b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        nm1 mo8141b = this.f32540a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
