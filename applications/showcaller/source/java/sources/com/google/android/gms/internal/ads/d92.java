package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d92.class */
public final class d92 implements cj3<b92> {

    /* renamed from: a */
    private final pj3<s03> f21551a;

    /* renamed from: b */
    private final pj3<Context> f21552b;

    /* renamed from: c */
    private final pj3<Set<String>> f21553c;

    public d92(pj3<s03> pj3Var, pj3<Context> pj3Var2, pj3<Set<String>> pj3Var3) {
        this.f21551a = pj3Var;
        this.f21552b = pj3Var2;
        this.f21553c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new b92(s03Var, ((bl2) this.f21552b).m16321a(), this.f21553c.mo8141b());
    }
}
