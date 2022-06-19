package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cey.class */
public final class cey implements dht<cev<bdu, bdr>> {

    /* renamed from: a */
    private final dig<Context> f12845a;

    /* renamed from: b */
    private final dig<cik> f12846b;

    /* renamed from: c */
    private final dig<cjc> f12847c;

    public cey(dig<Context> digVar, dig<cik> digVar2, dig<cjc> digVar3) {
        this.f12845a = digVar;
        this.f12846b = digVar2;
        this.f12847c = digVar3;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        cev cenVar;
        Context mo9430a = this.f12845a.mo9430a();
        cik mo9430a2 = this.f12846b.mo9430a();
        cjc mo9430a3 = this.f12847c.mo9430a();
        if (((Integer) dyx.m8158e().m7876a(edi.f16534dh)).intValue() > 0) {
            cjg m11215a = mo9430a3.m11215a(cix.Rewarded, mo9430a, mo9430a2, new ced(new cdt()));
            cenVar = new cdy(new cem(new cen()), new cee(m11215a.f13165a, C3650yg.f17642a), m11215a.f13166b, C3650yg.f17642a);
        } else {
            cenVar = new cen();
        }
        return (cev) dhz.m9438a(cenVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
