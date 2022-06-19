package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxm.class */
public final class bxm implements dht<bxi> {

    /* renamed from: a */
    private final dig<Context> f12452a;

    /* renamed from: b */
    private final dig<crs> f12453b;

    private bxm(dig<Context> digVar, dig<crs> digVar2) {
        this.f12452a = digVar;
        this.f12453b = digVar2;
    }

    /* renamed from: a */
    public static bxi m11564a(Context context, crs crsVar) {
        return new bxi(context, crsVar);
    }

    /* renamed from: a */
    public static bxm m11563a(dig<Context> digVar, dig<crs> digVar2) {
        return new bxm(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11564a(this.f12452a.mo9430a(), this.f12453b.mo9430a());
    }
}
