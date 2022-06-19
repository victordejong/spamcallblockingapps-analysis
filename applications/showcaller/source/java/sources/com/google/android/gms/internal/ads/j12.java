package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j12.class */
public final class j12 implements cj3<i12> {

    /* renamed from: a */
    private final pj3<Context> f24757a;

    /* renamed from: b */
    private final pj3<Executor> f24758b;

    /* renamed from: c */
    private final pj3<kk1> f24759c;

    public j12(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<kk1> pj3Var3) {
        this.f24757a = pj3Var;
        this.f24758b = pj3Var2;
        this.f24759c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new i12(this.f24757a.mo8141b(), this.f24758b.mo8141b(), this.f24759c.mo8141b());
    }
}
