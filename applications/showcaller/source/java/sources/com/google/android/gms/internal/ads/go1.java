package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/go1.class */
public final class go1 implements cj3<Set<ja1<b31>>> {

    /* renamed from: a */
    private final eo1 f23423a;

    /* renamed from: b */
    private final pj3<po1> f23424b;

    /* renamed from: c */
    private final pj3<Executor> f23425c;

    public go1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f23423a = eo1Var;
        this.f23424b = pj3Var;
        this.f23425c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f23424b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<b31>> m15416b = eo1.m15416b(mo8141b, s03Var);
        kj3.m13879b(m15416b);
        return m15416b;
    }
}
