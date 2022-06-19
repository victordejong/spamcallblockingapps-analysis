package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jn1.class */
public final class jn1 implements cj3<ja1<n41>> {

    /* renamed from: a */
    private final pj3<en1> f24932a;

    /* renamed from: b */
    private final pj3<Executor> f24933b;

    /* renamed from: c */
    private final pj3<mu1> f24934c;

    public jn1(pj3<en1> pj3Var, pj3<Executor> pj3Var2, pj3<mu1> pj3Var3) {
        this.f24932a = pj3Var;
        this.f24933b = pj3Var2;
        this.f24934c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        en1 mo8141b = this.f24932a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue() ? new ja1(this.f24934c.mo8141b(), s03Var) : new ja1(mo8141b, s03Var);
    }
}
