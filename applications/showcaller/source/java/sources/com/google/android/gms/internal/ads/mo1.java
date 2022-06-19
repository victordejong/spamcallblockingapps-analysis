package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mo1.class */
public final class mo1 implements cj3<Set<ja1<AbstractC6673kq>>> {

    /* renamed from: a */
    private final eo1 f26689a;

    /* renamed from: b */
    private final pj3<po1> f26690b;

    /* renamed from: c */
    private final pj3<Executor> f26691c;

    public mo1(eo1 eo1Var, pj3<po1> pj3Var, pj3<Executor> pj3Var2) {
        this.f26689a = eo1Var;
        this.f26690b = pj3Var;
        this.f26691c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        po1 mo8141b = this.f26690b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        Set<ja1<AbstractC6673kq>> m15411g = eo1.m15411g(mo8141b, s03Var);
        kj3.m13879b(m15411g);
        return m15411g;
    }
}
