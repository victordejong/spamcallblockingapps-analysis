package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxq.class */
public final class bxq implements dht<bxo> {

    /* renamed from: a */
    private final dig<Context> f12460a;

    /* renamed from: b */
    private final dig<crs> f12461b;

    private bxq(dig<Context> digVar, dig<crs> digVar2) {
        this.f12460a = digVar;
        this.f12461b = digVar2;
    }

    /* renamed from: a */
    public static bxq m11562a(dig<Context> digVar, dig<crs> digVar2) {
        return new bxq(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bxo(this.f12460a.mo9430a(), this.f12461b.mo9430a());
    }
}
