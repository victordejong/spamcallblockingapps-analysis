package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwg.class */
public final class bwg implements dht<bwe> {

    /* renamed from: a */
    private final dig<String> f12385a;

    /* renamed from: b */
    private final dig<String> f12386b;

    /* renamed from: c */
    private final dig<ant> f12387c;

    /* renamed from: d */
    private final dig<cia> f12388d;

    /* renamed from: e */
    private final dig<chh> f12389e;

    private bwg(dig<String> digVar, dig<String> digVar2, dig<ant> digVar3, dig<cia> digVar4, dig<chh> digVar5) {
        this.f12385a = digVar;
        this.f12386b = digVar2;
        this.f12387c = digVar3;
        this.f12388d = digVar4;
        this.f12389e = digVar5;
    }

    /* renamed from: a */
    public static bwg m11576a(dig<String> digVar, dig<String> digVar2, dig<ant> digVar3, dig<cia> digVar4, dig<chh> digVar5) {
        return new bwg(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bwe(this.f12385a.mo9430a(), this.f12386b.mo9430a(), this.f12387c.mo9430a(), this.f12388d.mo9430a(), this.f12389e.mo9430a());
    }
}
