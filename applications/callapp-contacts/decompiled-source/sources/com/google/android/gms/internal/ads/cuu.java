package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuu.class */
public final class cuu implements dsi<cus> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f26439a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zc> f26440b;

    public cuu(dsv<Executor> dsvVar, dsv<zc> dsvVar2) {
        this.f26439a = dsvVar;
        this.f26440b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cus(this.f26439a.a(), this.f26440b.a());
    }
}
