package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amb.class */
public final class amb implements dht<amc> {

    /* renamed from: a */
    private final dig<cgr> f9985a;

    /* renamed from: b */
    private final dig<aqh> f9986b;

    /* renamed from: c */
    private final dig<ark> f9987c;

    private amb(dig<cgr> digVar, dig<aqh> digVar2, dig<ark> digVar3) {
        this.f9985a = digVar;
        this.f9986b = digVar2;
        this.f9987c = digVar3;
    }

    /* renamed from: a */
    public static amb m12950a(dig<cgr> digVar, dig<aqh> digVar2, dig<ark> digVar3) {
        return new amb(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new amc(this.f9985a.mo9430a(), this.f9986b.mo9430a(), this.f9987c.mo9430a());
    }
}
