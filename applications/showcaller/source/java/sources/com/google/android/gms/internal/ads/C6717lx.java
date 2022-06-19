package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.internal.ads.lx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lx.class */
public final class C6717lx implements cj3<C6680kx> {

    /* renamed from: a */
    private final pj3<Context> f26319a;

    /* renamed from: b */
    private final pj3<ScheduledExecutorService> f26320b;

    /* renamed from: c */
    private final pj3<C6754mx> f26321c;

    public C6717lx(pj3<Context> pj3Var, pj3<ScheduledExecutorService> pj3Var2, pj3<C6754mx> pj3Var3) {
        this.f26319a = pj3Var;
        this.f26320b = pj3Var2;
        this.f26321c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new C6680kx(((bl2) this.f26319a).m16321a(), this.f26320b.mo8141b(), new C6754mx(), null);
    }
}
