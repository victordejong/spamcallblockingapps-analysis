package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f82.class */
public final class f82 implements cj3<d82> {

    /* renamed from: a */
    private final pj3<s03> f22744a;

    /* renamed from: b */
    private final pj3<ViewGroup> f22745b;

    /* renamed from: c */
    private final pj3<Context> f22746c;

    /* renamed from: d */
    private final pj3<Set<String>> f22747d;

    public f82(pj3<s03> pj3Var, pj3<ViewGroup> pj3Var2, pj3<Context> pj3Var3, pj3<Set<String>> pj3Var4) {
        this.f22744a = pj3Var;
        this.f22745b = pj3Var2;
        this.f22746c = pj3Var3;
        this.f22747d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new d82(s03Var, ((vw0) this.f22745b).m9860a(), this.f22746c.mo8141b(), ((nj3) this.f22747d).mo8141b());
    }
}
