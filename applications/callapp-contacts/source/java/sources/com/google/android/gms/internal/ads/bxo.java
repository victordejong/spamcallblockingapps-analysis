package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.asy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxo.class */
public final class bxo<AdT, AdapterT, ListenerT extends asy> implements dsi<bxj<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    private final dsv<cti> f45035a;

    /* renamed from: b */
    private final dsv<dbs> f45036b;

    /* renamed from: c */
    private final dsv<bsm<AdapterT, ListenerT>> f45037c;

    /* renamed from: d */
    private final dsv<bss<AdT, AdapterT, ListenerT>> f45038d;

    private bxo(dsv<cti> dsvVar, dsv<dbs> dsvVar2, dsv<bsm<AdapterT, ListenerT>> dsvVar3, dsv<bss<AdT, AdapterT, ListenerT>> dsvVar4) {
        this.f45035a = dsvVar;
        this.f45036b = dsvVar2;
        this.f45037c = dsvVar3;
        this.f45038d = dsvVar4;
    }

    /* renamed from: a */
    public static <AdT, AdapterT, ListenerT extends asy> bxo<AdT, AdapterT, ListenerT> m17583a(dsv<cti> dsvVar, dsv<dbs> dsvVar2, dsv<bsm<AdapterT, ListenerT>> dsvVar3, dsv<bss<AdT, AdapterT, ListenerT>> dsvVar4) {
        return new bxo<>(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bxj(this.f45035a.mo14005a(), this.f45036b.mo14005a(), this.f45037c.mo14005a(), this.f45038d.mo14005a());
    }
}
