package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m02.class */
public final class m02 implements cj3<l02> {

    /* renamed from: a */
    private final pj3<Context> f26372a;

    /* renamed from: b */
    private final pj3<Executor> f26373b;

    /* renamed from: c */
    private final pj3<kk1> f26374c;

    public m02(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<kk1> pj3Var3) {
        this.f26372a = pj3Var;
        this.f26373b = pj3Var2;
        this.f26374c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new l02(this.f26372a.mo8141b(), this.f26373b.mo8141b(), this.f26374c.mo8141b());
    }
}
