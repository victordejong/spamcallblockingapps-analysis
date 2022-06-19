package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fo1.class */
public final class fo1 implements cj3<Set<ja1<y21>>> {

    /* renamed from: a */
    private final eo1 f23009a;

    /* renamed from: b */
    private final pj3<po1> f23010b;

    /* renamed from: c */
    private final pj3<Executor> f23011c;

    public fo1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f23009a = eo1Var;
        this.f23010b = pj3Var;
        this.f23011c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f23010b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<y21>> m15417a = eo1.m15417a(mo8141b, s03Var);
        kj3.m13879b(m15417a);
        return m15417a;
    }
}
