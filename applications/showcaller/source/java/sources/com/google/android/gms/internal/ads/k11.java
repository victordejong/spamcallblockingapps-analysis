package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k11.class */
public final class k11 implements cj3<ja1<qa1>> {

    /* renamed from: a */
    private final pj3<l71> f25053a;

    /* renamed from: b */
    private final pj3<Executor> f25054b;

    public k11(pj3<l71> pj3Var, pj3<Executor> pj3Var2) {
        this.f25053a = pj3Var;
        this.f25054b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ja1(this.f25053a.mo8141b(), this.f25054b.mo8141b());
    }
}
