package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wx1.class */
public final class wx1 implements cj3<vx1> {

    /* renamed from: a */
    private final pj3<Context> f31827a;

    /* renamed from: b */
    private final pj3<vx0> f31828b;

    /* renamed from: c */
    private final pj3<Executor> f31829c;

    public wx1(pj3<Context> pj3Var, pj3<vx0> pj3Var2, pj3<Executor> pj3Var3) {
        this.f31827a = pj3Var;
        this.f31828b = pj3Var2;
        this.f31829c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new vx1(this.f31827a.mo8141b(), this.f31828b.mo8141b(), this.f31829c.mo8141b());
    }
}
