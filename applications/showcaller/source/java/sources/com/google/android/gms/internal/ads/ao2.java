package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ao2.class */
public final class ao2 implements cj3<yn2> {

    /* renamed from: a */
    private final pj3<s03> f20070a;

    /* renamed from: b */
    private final pj3<ScheduledExecutorService> f20071b;

    /* renamed from: c */
    private final pj3<xn2> f20072c;

    public ao2(pj3<s03> pj3Var, pj3<ScheduledExecutorService> pj3Var2, pj3<xn2> pj3Var3) {
        this.f20070a = pj3Var;
        this.f20071b = pj3Var2;
        this.f20072c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new yn2(s03Var, this.f20071b.mo8141b(), ((bo2) this.f20072c).mo8141b());
    }
}
