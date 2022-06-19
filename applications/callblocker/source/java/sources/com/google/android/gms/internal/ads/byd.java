package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byd.class */
public final class byd implements dht<byb> {

    /* renamed from: a */
    private final dig<crs> f12476a;

    /* renamed from: b */
    private final dig<cgp> f12477b;

    private byd(dig<crs> digVar, dig<cgp> digVar2) {
        this.f12476a = digVar;
        this.f12477b = digVar2;
    }

    /* renamed from: a */
    public static byd m11558a(dig<crs> digVar, dig<cgp> digVar2) {
        return new byd(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new byb(this.f12476a.mo9430a(), this.f12477b.mo9430a());
    }
}
