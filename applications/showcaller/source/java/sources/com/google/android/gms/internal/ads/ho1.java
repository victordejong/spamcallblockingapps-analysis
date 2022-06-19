package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ho1.class */
public final class ho1 implements cj3<Set<ja1<t31>>> {

    /* renamed from: a */
    private final eo1 f23994a;

    /* renamed from: b */
    private final pj3<po1> f23995b;

    /* renamed from: c */
    private final pj3<Executor> f23996c;

    public ho1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f23994a = eo1Var;
        this.f23995b = pj3Var;
        this.f23996c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f23995b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<t31>> m15415c = eo1.m15415c(mo8141b, s03Var);
        kj3.m13879b(m15415c);
        return m15415c;
    }
}
