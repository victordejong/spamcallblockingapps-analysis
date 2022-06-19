package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gy1.class */
public final class gy1 implements cj3<fy1> {

    /* renamed from: a */
    private final pj3<Context> f23742a;

    /* renamed from: b */
    private final pj3<Executor> f23743b;

    /* renamed from: c */
    private final pj3<jc1> f23744c;

    /* renamed from: d */
    private final pj3<dj2> f23745d;

    public gy1(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<jc1> pj3Var3, pj3<dj2> pj3Var4) {
        this.f23742a = pj3Var;
        this.f23743b = pj3Var2;
        this.f23744c = pj3Var3;
        this.f23745d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new fy1(this.f23742a.mo8141b(), this.f23743b.mo8141b(), this.f23744c.mo8141b(), this.f23745d.mo8141b());
    }
}
