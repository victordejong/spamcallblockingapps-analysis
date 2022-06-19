package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wc2.class */
public final class wc2 implements cj3<uc2> {

    /* renamed from: a */
    private final pj3<ob0> f31508a;

    /* renamed from: b */
    private final pj3<ScheduledExecutorService> f31509b;

    /* renamed from: c */
    private final pj3<Context> f31510c;

    public wc2(pj3<ob0> pj3Var, pj3<ScheduledExecutorService> pj3Var2, pj3<Context> pj3Var3) {
        this.f31508a = pj3Var;
        this.f31509b = pj3Var2;
        this.f31510c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new uc2(new ob0(), this.f31509b.mo8141b(), ((xp0) this.f31510c).m9095a(), null);
    }
}
