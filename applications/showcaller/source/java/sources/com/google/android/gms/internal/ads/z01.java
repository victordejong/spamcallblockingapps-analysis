package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z01.class */
public final class z01 implements cj3<ja1<y21>> {

    /* renamed from: a */
    private final pj3<l71> f32743a;

    /* renamed from: b */
    private final pj3<Executor> f32744b;

    public z01(pj3<l71> pj3Var, pj3<Executor> pj3Var2) {
        this.f32743a = pj3Var;
        this.f32744b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ja1(this.f32743a.mo8141b(), this.f32744b.mo8141b());
    }
}
