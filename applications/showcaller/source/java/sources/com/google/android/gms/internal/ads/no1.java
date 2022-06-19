package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/no1.class */
public final class no1 implements cj3<Set<ja1<s31>>> {

    /* renamed from: a */
    private final eo1 f27240a;

    /* renamed from: b */
    private final pj3<po1> f27241b;

    /* renamed from: c */
    private final pj3<Executor> f27242c;

    public no1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f27240a = eo1Var;
        this.f27241b = pj3Var;
        this.f27242c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f27241b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<s31>> m15410h = eo1.m15410h(mo8141b, s03Var);
        kj3.m13879b(m15410h);
        return m15410h;
    }
}
