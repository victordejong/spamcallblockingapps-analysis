package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/caf.class */
public final class caf implements dht<bzy> {

    /* renamed from: a */
    private final dig<crs> f12598a;

    /* renamed from: b */
    private final dig<Context> f12599b;

    private caf(dig<crs> digVar, dig<Context> digVar2) {
        this.f12598a = digVar;
        this.f12599b = digVar2;
    }

    /* renamed from: a */
    public static bzy m11513a(crs crsVar, Context context) {
        return new bzy(crsVar, context);
    }

    /* renamed from: a */
    public static caf m11512a(dig<crs> digVar, dig<Context> digVar2) {
        return new caf(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11513a(this.f12598a.mo9430a(), this.f12599b.mo9430a());
    }
}
