package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cce.class */
public final class cce implements chb<Object> {

    /* renamed from: a */
    private final dbt<String> f45496a;

    /* renamed from: b */
    private final Executor f45497b;

    public cce(dbt<String> dbtVar, Executor executor) {
        this.f45496a = dbtVar;
        this.f45497b = executor;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<Object> mo17449a() {
        return daj.m16941a(this.f45496a, ccd.f45495a, this.f45497b);
    }
}
