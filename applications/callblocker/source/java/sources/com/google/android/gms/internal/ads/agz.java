package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agz.class */
final class agz implements cgj {

    /* renamed from: a */
    private dig<Context> f9331a;

    /* renamed from: b */
    private dig<cev<bdu, bdr>> f9332b;

    /* renamed from: c */
    private dig<cfa> f9333c;

    /* renamed from: d */
    private dig<chb> f9334d;

    /* renamed from: e */
    private dig<cfy> f9335e;

    /* renamed from: f */
    private dig<cgl> f9336f;

    /* renamed from: g */
    private dig<String> f9337g;

    /* renamed from: h */
    private dig<cgf> f9338h;

    /* renamed from: i */
    private final /* synthetic */ agf f9339i;

    /* JADX INFO: Access modifiers changed from: private */
    public agz(agf agfVar, Context context, String str) {
        dig digVar;
        dig digVar2;
        dig digVar3;
        dig digVar4;
        dig digVar5;
        this.f9339i = agfVar;
        this.f9331a = dhw.m9444a(context);
        dig<Context> digVar6 = this.f9331a;
        digVar = this.f9339i.f8149Y;
        digVar2 = this.f9339i.f8150Z;
        this.f9332b = new cey(digVar6, digVar, digVar2);
        digVar3 = this.f9339i.f8149Y;
        this.f9333c = dhu.m9447a(new cfw(digVar3));
        this.f9334d = dhu.m9447a(chf.m11351b());
        dig<Context> digVar7 = this.f9331a;
        digVar4 = this.f9339i.f8154c;
        digVar5 = this.f9339i.f8175x;
        this.f9335e = dhu.m9447a(new cgb(digVar7, digVar4, digVar5, this.f9332b, this.f9333c, chi.m11349b(), this.f9334d));
        this.f9336f = dhu.m9447a(new cgm(this.f9335e, this.f9333c, this.f9334d));
        this.f9337g = dhw.m9443b(str);
        this.f9338h = dhu.m9447a(new cgg(this.f9337g, this.f9335e, this.f9331a, this.f9333c, this.f9334d));
    }

    @Override // com.google.android.gms.internal.ads.cgj
    /* renamed from: a */
    public final cgl mo11379a() {
        return this.f9336f.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.cgj
    /* renamed from: b */
    public final cgf mo11378b() {
        return this.f9338h.mo9430a();
    }
}
