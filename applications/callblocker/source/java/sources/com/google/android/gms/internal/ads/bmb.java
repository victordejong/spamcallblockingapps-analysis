package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmb.class */
public final class bmb implements dht<bma> {

    /* renamed from: a */
    private final dig<bly> f11520a;

    /* renamed from: b */
    private final dig<crs> f11521b;

    private bmb(dig<bly> digVar, dig<crs> digVar2) {
        this.f11520a = digVar;
        this.f11521b = digVar2;
    }

    /* renamed from: a */
    public static bmb m11799a(dig<bly> digVar, dig<crs> digVar2) {
        return new bmb(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bma(this.f11520a.mo9430a(), this.f11521b.mo9430a());
    }
}
