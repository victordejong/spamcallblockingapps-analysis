package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcw.class */
public final class bcw implements dht<bct> {

    /* renamed from: a */
    private final dig<String> f10976a;

    /* renamed from: b */
    private final dig<aym> f10977b;

    /* renamed from: c */
    private final dig<ayx> f10978c;

    private bcw(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        this.f10976a = digVar;
        this.f10977b = digVar2;
        this.f10978c = digVar3;
    }

    /* renamed from: a */
    public static bcw m12092a(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        return new bcw(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bct(this.f10976a.mo9430a(), this.f10977b.mo9430a(), this.f10978c.mo9430a());
    }
}
