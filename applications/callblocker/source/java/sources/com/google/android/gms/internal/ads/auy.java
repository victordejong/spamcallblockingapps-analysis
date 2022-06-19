package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/auy.class */
public final class auy implements dht<auz> {

    /* renamed from: a */
    private final dig<cgr> f10402a;

    /* renamed from: b */
    private final dig<clj> f10403b;

    private auy(dig<cgr> digVar, dig<clj> digVar2) {
        this.f10402a = digVar;
        this.f10403b = digVar2;
    }

    /* renamed from: a */
    public static auy m12414a(dig<cgr> digVar, dig<clj> digVar2) {
        return new auy(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new auz(this.f10402a.mo9430a(), this.f10403b.mo9430a());
    }
}
