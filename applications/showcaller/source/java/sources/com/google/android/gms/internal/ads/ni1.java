package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ni1.class */
public final class ni1 implements cj3<li1> {

    /* renamed from: a */
    private final pj3<Executor> f27153a;

    /* renamed from: b */
    private final pj3<pv0> f27154b;

    /* renamed from: c */
    private final pj3<la1> f27155c;

    public ni1(pj3<Executor> pj3Var, pj3<pv0> pj3Var2, pj3<la1> pj3Var3) {
        this.f27153a = pj3Var;
        this.f27154b = pj3Var2;
        this.f27155c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new li1(this.f27153a.mo8141b(), this.f27154b.mo8141b(), this.f27155c.mo8141b());
    }
}
