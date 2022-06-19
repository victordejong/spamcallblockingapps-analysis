package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwq.class */
public final class bwq implements dht<bwo> {

    /* renamed from: a */
    private final dig<crs> f12412a;

    /* renamed from: b */
    private final dig<Context> f12413b;

    private bwq(dig<crs> digVar, dig<Context> digVar2) {
        this.f12412a = digVar;
        this.f12413b = digVar2;
    }

    /* renamed from: a */
    public static bwq m11573a(dig<crs> digVar, dig<Context> digVar2) {
        return new bwq(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bwo(this.f12412a.mo9430a(), this.f12413b.mo9430a());
    }
}
