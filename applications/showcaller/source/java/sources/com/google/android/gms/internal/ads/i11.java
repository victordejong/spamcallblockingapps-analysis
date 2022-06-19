package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i11.class */
public final class i11 implements cj3<ja1<AbstractC6673kq>> {

    /* renamed from: a */
    private final pj3<cn1> f24117a;

    /* renamed from: b */
    private final pj3<Executor> f24118b;

    /* renamed from: c */
    private final pj3<ju1> f24119c;

    public i11(pj3<cn1> pj3Var, pj3<Executor> pj3Var2, pj3<ju1> pj3Var3) {
        this.f24117a = pj3Var;
        this.f24118b = pj3Var2;
        this.f24119c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        cn1 mo8141b = this.f24117a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue() ? new ja1(this.f24119c.mo8141b(), s03Var) : new ja1(mo8141b, s03Var);
    }
}
