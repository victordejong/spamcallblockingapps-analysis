package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axb.class */
public final class axb implements dht<axc> {

    /* renamed from: a */
    private final dig<aqh> f10496a;

    /* renamed from: b */
    private final dig<cgr> f10497b;

    private axb(dig<aqh> digVar, dig<cgr> digVar2) {
        this.f10496a = digVar;
        this.f10497b = digVar2;
    }

    /* renamed from: a */
    public static axb m12364a(dig<aqh> digVar, dig<cgr> digVar2) {
        return new axb(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new axc(this.f10496a.mo9430a(), this.f10497b.mo9430a());
    }
}
