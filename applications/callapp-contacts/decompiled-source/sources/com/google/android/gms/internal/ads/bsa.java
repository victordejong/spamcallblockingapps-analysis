package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsa.class */
public final class bsa implements dsi<brs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24980a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f24981b;

    public bsa(dsv<Context> dsvVar, dsv<dbs> dsvVar2) {
        this.f24980a = dsvVar;
        this.f24981b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new brs(this.f24980a.a(), this.f24981b.a());
    }
}
