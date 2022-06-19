package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byz.class */
public final class byz implements dht<byx> {

    /* renamed from: a */
    private final dig<crs> f12514a;

    /* renamed from: b */
    private final dig<Bundle> f12515b;

    private byz(dig<crs> digVar, dig<Bundle> digVar2) {
        this.f12514a = digVar;
        this.f12515b = digVar2;
    }

    /* renamed from: a */
    public static byz m11548a(dig<crs> digVar, dig<Bundle> digVar2) {
        return new byz(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new byx(this.f12514a.mo9430a(), this.f12515b.mo9430a());
    }
}
