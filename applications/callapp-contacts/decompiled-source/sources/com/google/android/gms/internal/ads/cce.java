package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cce.class */
public final class cce implements chb<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final dbt<String> f25574a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f25575b;

    public cce(dbt<String> dbtVar, Executor executor) {
        this.f25574a = dbtVar;
        this.f25575b = executor;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<Object> a() {
        return daj.a(this.f25574a, ccd.f25573a, this.f25575b);
    }
}
