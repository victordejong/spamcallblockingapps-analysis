package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgi.class */
public final class bgi implements dsi<bgf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24385a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<akh> f24386b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ayh> f24387c;

    public bgi(dsv<Executor> dsvVar, dsv<akh> dsvVar2, dsv<ayh> dsvVar3) {
        this.f24385a = dsvVar;
        this.f24386b = dsvVar2;
        this.f24387c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgf(this.f24385a.a(), this.f24386b.a(), this.f24387c.a());
    }
}
