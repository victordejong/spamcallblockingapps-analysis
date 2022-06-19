package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ko1.class */
public final class ko1 implements cj3<Set<ja1<u51>>> {

    /* renamed from: a */
    private final eo1 f25279a;

    /* renamed from: b */
    private final pj3<po1> f25280b;

    /* renamed from: c */
    private final pj3<Executor> f25281c;

    public ko1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f25279a = eo1Var;
        this.f25280b = pj3Var;
        this.f25281c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f25280b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<u51>> m15413e = eo1.m15413e(mo8141b, s03Var);
        kj3.m13879b(m15413e);
        return m15413e;
    }
}
