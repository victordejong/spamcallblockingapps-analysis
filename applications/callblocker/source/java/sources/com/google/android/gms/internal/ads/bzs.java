package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzs.class */
public final class bzs implements dht<bzq> {

    /* renamed from: a */
    private final dig<crs> f12573a;

    /* renamed from: b */
    private final dig<Context> f12574b;

    /* renamed from: c */
    private final dig<C3647yd> f12575c;

    private bzs(dig<crs> digVar, dig<Context> digVar2, dig<C3647yd> digVar3) {
        this.f12573a = digVar;
        this.f12574b = digVar2;
        this.f12575c = digVar3;
    }

    /* renamed from: a */
    public static bzs m11532a(dig<crs> digVar, dig<Context> digVar2, dig<C3647yd> digVar3) {
        return new bzs(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bzq(this.f12573a.mo9430a(), this.f12574b.mo9430a(), this.f12575c.mo9430a());
    }
}
