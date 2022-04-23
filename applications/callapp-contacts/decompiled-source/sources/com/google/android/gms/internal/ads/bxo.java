package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.asy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxo.class */
public final class bxo<AdT, AdapterT, ListenerT extends asy> implements dsi<bxj<AdT, AdapterT, ListenerT>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cti> f25347a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f25348b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bsm<AdapterT, ListenerT>> f25349c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bss<AdT, AdapterT, ListenerT>> f25350d;

    private bxo(dsv<cti> dsvVar, dsv<dbs> dsvVar2, dsv<bsm<AdapterT, ListenerT>> dsvVar3, dsv<bss<AdT, AdapterT, ListenerT>> dsvVar4) {
        this.f25347a = dsvVar;
        this.f25348b = dsvVar2;
        this.f25349c = dsvVar3;
        this.f25350d = dsvVar4;
    }

    public static <AdT, AdapterT, ListenerT extends asy> bxo<AdT, AdapterT, ListenerT> a(dsv<cti> dsvVar, dsv<dbs> dsvVar2, dsv<bsm<AdapterT, ListenerT>> dsvVar3, dsv<bss<AdT, AdapterT, ListenerT>> dsvVar4) {
        return new bxo<>(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bxj(this.f25347a.a(), this.f25348b.a(), this.f25349c.a(), this.f25350d.a());
    }
}
