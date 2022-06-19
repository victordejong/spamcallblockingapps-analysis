package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s72.class */
public final class s72 implements cj3<q72> {

    /* renamed from: a */
    private final pj3<Context> f29419a;

    /* renamed from: b */
    private final pj3<s03> f29420b;

    public s72(pj3<Context> pj3Var, pj3<s03> pj3Var2) {
        this.f29419a = pj3Var;
        this.f29420b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context mo8141b = this.f29419a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new q72(mo8141b, s03Var);
    }
}
