package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o72.class */
public final class o72 implements cj3<n72> {

    /* renamed from: a */
    private final pj3<Context> f27469a;

    /* renamed from: b */
    private final pj3<s03> f27470b;

    public o72(pj3<Context> pj3Var, pj3<s03> pj3Var2) {
        this.f27469a = pj3Var;
        this.f27470b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context m16321a = ((bl2) this.f27469a).m16321a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new n72(m16321a, s03Var);
    }
}
