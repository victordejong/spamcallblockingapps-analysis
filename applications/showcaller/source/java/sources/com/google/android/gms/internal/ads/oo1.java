package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oo1.class */
public final class oo1 implements cj3<Set<ja1<zn2>>> {

    /* renamed from: a */
    private final eo1 f27656a;

    /* renamed from: b */
    private final pj3<po1> f27657b;

    /* renamed from: c */
    private final pj3<Executor> f27658c;

    public oo1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f27656a = eo1Var;
        this.f27657b = pj3Var;
        this.f27658c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f27657b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<zn2>> m15409i = eo1.m15409i(mo8141b, s03Var);
        kj3.m13879b(m15409i);
        return m15409i;
    }
}
