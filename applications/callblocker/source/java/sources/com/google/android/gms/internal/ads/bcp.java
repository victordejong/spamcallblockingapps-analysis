package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcp.class */
public final class bcp implements dht<bcq> {

    /* renamed from: a */
    private final dig<String> f10955a;

    /* renamed from: b */
    private final dig<aym> f10956b;

    /* renamed from: c */
    private final dig<ayx> f10957c;

    private bcp(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        this.f10955a = digVar;
        this.f10956b = digVar2;
        this.f10957c = digVar3;
    }

    /* renamed from: a */
    public static bcp m12096a(dig<String> digVar, dig<aym> digVar2, dig<ayx> digVar3) {
        return new bcp(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bcq(this.f10955a.mo9430a(), this.f10956b.mo9430a(), this.f10957c.mo9430a());
    }
}
