package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ly0.class */
public final class ly0 implements cj3<gy0> {

    /* renamed from: a */
    private final pj3<wy0> f26338a;

    /* renamed from: b */
    private final pj3<w00> f26339b;

    /* renamed from: c */
    private final pj3<Runnable> f26340c;

    /* renamed from: d */
    private final pj3<Executor> f26341d;

    public ly0(pj3<wy0> pj3Var, pj3<w00> pj3Var2, pj3<Runnable> pj3Var3, pj3<Executor> pj3Var4) {
        this.f26338a = pj3Var;
        this.f26339b = pj3Var2;
        this.f26340c = pj3Var3;
        this.f26341d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new gy0(((u01) this.f26338a).mo8141b(), ((ky0) this.f26339b).m13760a(), ((jy0) this.f26340c).m14013a(), this.f26341d.mo8141b());
    }
}
