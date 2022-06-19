package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgt.class */
public final class bgt implements dht<bgs> {

    /* renamed from: a */
    private final dig<dwi> f11203a;

    /* renamed from: b */
    private final dig<Map<ckw, bgu>> f11204b;

    private bgt(dig<dwi> digVar, dig<Map<ckw, bgu>> digVar2) {
        this.f11203a = digVar;
        this.f11204b = digVar2;
    }

    /* renamed from: a */
    public static bgt m11963a(dig<dwi> digVar, dig<Map<ckw, bgu>> digVar2) {
        return new bgt(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bgs(this.f11203a.mo9430a(), this.f11204b.mo9430a());
    }
}
