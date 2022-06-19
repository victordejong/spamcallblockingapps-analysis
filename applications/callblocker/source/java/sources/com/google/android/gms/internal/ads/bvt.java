package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvt.class */
public final class bvt implements dht<bvq> {

    /* renamed from: a */
    private final dig<String> f12358a;

    /* renamed from: b */
    private final dig<crs> f12359b;

    /* renamed from: c */
    private final dig<bfg> f12360c;

    private bvt(dig<String> digVar, dig<crs> digVar2, dig<bfg> digVar3) {
        this.f12358a = digVar;
        this.f12359b = digVar2;
        this.f12360c = digVar3;
    }

    /* renamed from: a */
    public static bvt m11587a(dig<String> digVar, dig<crs> digVar2, dig<bfg> digVar3) {
        return new bvt(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bvq(this.f12358a.mo9430a(), this.f12359b.mo9430a(), this.f12360c.mo9430a());
    }
}
