package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oz1.class */
public final class oz1 implements cj3<nz1> {

    /* renamed from: a */
    private final pj3<Context> f27798a;

    /* renamed from: b */
    private final pj3<fd1> f27799b;

    /* renamed from: c */
    private final pj3<Executor> f27800c;

    public oz1(pj3<Context> pj3Var, pj3<fd1> pj3Var2, pj3<Executor> pj3Var3) {
        this.f27798a = pj3Var;
        this.f27799b = pj3Var2;
        this.f27800c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new nz1(this.f27798a.mo8141b(), this.f27799b.mo8141b(), this.f27800c.mo8141b());
    }
}
