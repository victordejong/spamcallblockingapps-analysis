package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvk.class */
public final class bvk implements dht<bvi> {

    /* renamed from: a */
    private final dig<bwz<cak>> f12345a;

    /* renamed from: b */
    private final dig<chh> f12346b;

    /* renamed from: c */
    private final dig<Context> f12347c;

    /* renamed from: d */
    private final dig<C3542ug> f12348d;

    private bvk(dig<bwz<cak>> digVar, dig<chh> digVar2, dig<Context> digVar3, dig<C3542ug> digVar4) {
        this.f12345a = digVar;
        this.f12346b = digVar2;
        this.f12347c = digVar3;
        this.f12348d = digVar4;
    }

    /* renamed from: a */
    public static bvk m11592a(dig<bwz<cak>> digVar, dig<chh> digVar2, dig<Context> digVar3, dig<C3542ug> digVar4) {
        return new bvk(digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bvi(this.f12345a.mo9430a(), this.f12346b.mo9430a(), this.f12347c.mo9430a(), this.f12348d.mo9430a());
    }
}
