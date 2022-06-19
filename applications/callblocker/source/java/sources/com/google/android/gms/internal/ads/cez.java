package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cez.class */
public final class cez implements dht<cev<ajy, ake>> {

    /* renamed from: a */
    private final dig<Context> f12848a;

    /* renamed from: b */
    private final dig<cik> f12849b;

    /* renamed from: c */
    private final dig<cjc> f12850c;

    public cez(dig<Context> digVar, dig<cik> digVar2, dig<cjc> digVar3) {
        this.f12848a = digVar;
        this.f12849b = digVar2;
        this.f12850c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        cev cenVar;
        Context mo9430a = this.f12848a.mo9430a();
        cik mo9430a2 = this.f12849b.mo9430a();
        cjc mo9430a3 = this.f12850c.mo9430a();
        if (((Integer) dyx.m8158e().m7876a(edi.f16548dv)).intValue() > 0) {
            cjg m11215a = mo9430a3.m11215a(cix.AppOpen, mo9430a, mo9430a2, new ced(new cdt()));
            cenVar = new cdy(new cem(new cen()), new cee(m11215a.f13165a, C3650yg.f17642a), m11215a.f13166b, C3650yg.f17642a);
        } else {
            cenVar = new cen();
        }
        return (cev) dhz.m9438a(cenVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
