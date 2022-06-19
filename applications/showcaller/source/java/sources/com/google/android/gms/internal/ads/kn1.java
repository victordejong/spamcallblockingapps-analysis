package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kn1.class */
public final class kn1 implements cj3<ja1<zn2>> {

    /* renamed from: a */
    private final pj3<un1> f25270a;

    /* renamed from: b */
    private final pj3<Executor> f25271b;

    /* renamed from: c */
    private final pj3<tu1> f25272c;

    public kn1(pj3<un1> pj3Var, pj3<Executor> pj3Var2, pj3<tu1> pj3Var3) {
        this.f25270a = pj3Var;
        this.f25271b = pj3Var2;
        this.f25272c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        un1 mo8141b = this.f25270a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue() ? new ja1(this.f25272c.mo8141b(), s03Var) : new ja1(mo8141b, s03Var);
    }
}
