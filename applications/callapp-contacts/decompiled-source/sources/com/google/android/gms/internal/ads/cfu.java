package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfu.class */
public final class cfu implements dsi<cfs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25751a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Bundle> f25752b;

    private cfu(dsv<dbs> dsvVar, dsv<Bundle> dsvVar2) {
        this.f25751a = dsvVar;
        this.f25752b = dsvVar2;
    }

    public static cfu a(dsv<dbs> dsvVar, dsv<Bundle> dsvVar2) {
        return new cfu(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cfs(this.f25751a.a(), this.f25752b.a());
    }
}
