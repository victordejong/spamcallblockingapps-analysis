package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgh.class */
public final class bgh implements dht<bga> {

    /* renamed from: a */
    private final dig<dwi> f11190a;

    /* renamed from: b */
    private final dig<cfc> f11191b;

    private bgh(dig<dwi> digVar, dig<cfc> digVar2) {
        this.f11190a = digVar;
        this.f11191b = digVar2;
    }

    /* renamed from: a */
    public static bgh m11971a(dig<dwi> digVar, dig<cfc> digVar2) {
        return new bgh(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bga(this.f11190a.mo9430a(), this.f11191b.mo9430a());
    }
}
