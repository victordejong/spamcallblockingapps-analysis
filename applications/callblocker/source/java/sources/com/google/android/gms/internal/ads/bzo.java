package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzo.class */
public final class bzo implements dht<bzm> {

    /* renamed from: a */
    private final dig<C3509ta> f12559a;

    /* renamed from: b */
    private final dig<crs> f12560b;

    /* renamed from: c */
    private final dig<Context> f12561c;

    private bzo(dig<C3509ta> digVar, dig<crs> digVar2, dig<Context> digVar3) {
        this.f12559a = digVar;
        this.f12560b = digVar2;
        this.f12561c = digVar3;
    }

    /* renamed from: a */
    public static bzo m11534a(dig<C3509ta> digVar, dig<crs> digVar2, dig<Context> digVar3) {
        return new bzo(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bzm(this.f12559a.mo9430a(), this.f12560b.mo9430a(), this.f12561c.mo9430a());
    }
}
