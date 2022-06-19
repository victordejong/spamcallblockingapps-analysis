package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbs.class */
public final class cbs implements dht<cbq> {

    /* renamed from: a */
    private final dig<dvw> f12690a;

    /* renamed from: b */
    private final dig<crs> f12691b;

    /* renamed from: c */
    private final dig<Context> f12692c;

    public cbs(dig<dvw> digVar, dig<crs> digVar2, dig<Context> digVar3) {
        this.f12690a = digVar;
        this.f12691b = digVar2;
        this.f12692c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new cbq(this.f12690a.mo9430a(), this.f12691b.mo9430a(), this.f12692c.mo9430a());
    }
}
