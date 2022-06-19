package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lo1.class */
public final class lo1 implements cj3<Set<ja1<AbstractC6323bb>>> {

    /* renamed from: a */
    private final eo1 f26187a;

    /* renamed from: b */
    private final pj3<po1> f26188b;

    /* renamed from: c */
    private final pj3<Executor> f26189c;

    public lo1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f26187a = eo1Var;
        this.f26188b = pj3Var;
        this.f26189c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f26188b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<AbstractC6323bb>> m15412f = eo1.m15412f(mo8141b, s03Var);
        kj3.m13879b(m15412f);
        return m15412f;
    }
}
