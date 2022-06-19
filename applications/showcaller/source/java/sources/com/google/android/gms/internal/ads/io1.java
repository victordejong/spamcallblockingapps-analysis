package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/io1.class */
public final class io1 implements cj3<Set<ja1<n41>>> {

    /* renamed from: a */
    private final eo1 f24368a;

    /* renamed from: b */
    private final pj3<po1> f24369b;

    /* renamed from: c */
    private final pj3<Executor> f24370c;

    public io1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f24368a = eo1Var;
        this.f24369b = pj3Var;
        this.f24370c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f24369b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<n41>> m15414d = eo1.m15414d(mo8141b, s03Var);
        kj3.m13879b(m15414d);
        return m15414d;
    }
}
