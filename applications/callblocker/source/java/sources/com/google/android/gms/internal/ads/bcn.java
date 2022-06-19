package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcn.class */
public final class bcn implements dht<bco> {

    /* renamed from: a */
    private final dig<String> f10949a;

    /* renamed from: b */
    private final dig<aym> f10950b;

    /* renamed from: c */
    private final dig<ayx> f10951c;

    private bcn(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        this.f10949a = digVar;
        this.f10950b = digVar2;
        this.f10951c = digVar3;
    }

    /* renamed from: a */
    public static bcn m12097a(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        return new bcn(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bco(this.f10949a.mo9430a(), this.f10950b.mo9430a(), this.f10951c.mo9430a());
    }
}
