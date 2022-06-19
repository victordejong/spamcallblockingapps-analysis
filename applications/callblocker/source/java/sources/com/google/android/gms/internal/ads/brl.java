package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brl.class */
public final class brl<AdT, AdapterT, ListenerT extends aqz> implements dht<brh<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    private final dig<ckz> f11904a;

    /* renamed from: b */
    private final dig<crs> f11905b;

    /* renamed from: c */
    private final dig<bmw<AdapterT, ListenerT>> f11906c;

    /* renamed from: d */
    private final dig<bmy<AdT, AdapterT, ListenerT>> f11907d;

    private brl(dig<ckz> digVar, dig<crs> digVar2, dig<bmw<AdapterT, ListenerT>> digVar3, dig<bmy<AdT, AdapterT, ListenerT>> digVar4) {
        this.f11904a = digVar;
        this.f11905b = digVar2;
        this.f11906c = digVar3;
        this.f11907d = digVar4;
    }

    /* renamed from: a */
    public static <AdT, AdapterT, ListenerT extends aqz> brl<AdT, AdapterT, ListenerT> m11700a(dig<ckz> digVar, dig<crs> digVar2, dig<bmw<AdapterT, ListenerT>> digVar3, dig<bmy<AdT, AdapterT, ListenerT>> digVar4) {
        return new brl<>(digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new brh(this.f11904a.mo9430a(), this.f11905b.mo9430a(), this.f11906c.mo9430a(), this.f11907d.mo9430a());
    }
}
