package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpu.class */
public final class bpu implements dht<bpr> {

    /* renamed from: a */
    private final dig<afh> f11776a;

    /* renamed from: b */
    private final dig<apb.C2790a> f11777b;

    /* renamed from: c */
    private final dig<bsa> f11778c;

    /* renamed from: d */
    private final dig<atf> f11779d;

    public bpu(dig<afh> digVar, dig<apb.C2790a> digVar2, dig<bsa> digVar3, dig<atf> digVar4) {
        this.f11776a = digVar;
        this.f11777b = digVar2;
        this.f11778c = digVar3;
        this.f11779d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bpr(this.f11776a.mo9430a(), this.f11777b.mo9430a(), this.f11778c.mo9430a(), this.f11779d.mo9430a());
    }
}
