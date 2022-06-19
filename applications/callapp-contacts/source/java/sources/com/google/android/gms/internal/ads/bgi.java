package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgi.class */
public final class bgi implements dsi<bgf> {

    /* renamed from: a */
    private final dsv<Executor> f43865a;

    /* renamed from: b */
    private final dsv<akh> f43866b;

    /* renamed from: c */
    private final dsv<ayh> f43867c;

    public bgi(dsv<Executor> dsvVar, dsv<akh> dsvVar2, dsv<ayh> dsvVar3) {
        this.f43865a = dsvVar;
        this.f43866b = dsvVar2;
        this.f43867c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgf(this.f43865a.mo14005a(), this.f43866b.mo14005a(), this.f43867c.mo14005a());
    }
}
