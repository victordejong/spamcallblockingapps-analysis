package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvx.class */
public final class bvx implements dht<bvv> {

    /* renamed from: a */
    private final dig<crs> f12365a;

    /* renamed from: b */
    private final dig<chh> f12366b;

    private bvx(dig<crs> digVar, dig<chh> digVar2) {
        this.f12365a = digVar;
        this.f12366b = digVar2;
    }

    /* renamed from: a */
    public static bvx m11585a(dig<crs> digVar, dig<chh> digVar2) {
        return new bvx(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bvv(this.f12365a.mo9430a(), this.f12366b.mo9430a());
    }
}
