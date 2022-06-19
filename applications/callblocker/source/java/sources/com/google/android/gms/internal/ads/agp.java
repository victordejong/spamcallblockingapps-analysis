package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agp.class */
final class agp implements cdl {

    /* renamed from: a */
    private dig<Context> f8768a;

    /* renamed from: b */
    private dig<String> f8769b;

    /* renamed from: c */
    private dig<cev<ajy, ake>> f8770c;

    /* renamed from: d */
    private dig<cdn> f8771d;

    /* renamed from: e */
    private dig<ccy> f8772e;

    /* renamed from: f */
    private dig<cdf> f8773f;

    /* renamed from: g */
    private final /* synthetic */ agf f8774g;

    /* JADX INFO: Access modifiers changed from: private */
    public agp(agf agfVar, Context context, String str) {
        dig digVar;
        dig digVar2;
        dig digVar3;
        dig digVar4;
        dig digVar5;
        dig digVar6;
        dig digVar7;
        this.f8774g = agfVar;
        this.f8768a = dhw.m9444a(context);
        this.f8769b = dhw.m9444a(str);
        dig<Context> digVar8 = this.f8768a;
        digVar = this.f8774g.f8149Y;
        digVar2 = this.f8774g.f8150Z;
        this.f8770c = new cez(digVar8, digVar, digVar2);
        digVar3 = this.f8774g.f8149Y;
        this.f8771d = dhu.m9447a(new cdu(digVar3));
        dig<Context> digVar9 = this.f8768a;
        digVar4 = this.f8774g.f8154c;
        digVar5 = this.f8774g.f8175x;
        this.f8772e = dhu.m9447a(new cdg(digVar9, digVar4, digVar5, this.f8770c, this.f8771d, chi.m11349b()));
        digVar6 = this.f8774g.f8175x;
        dig<Context> digVar10 = this.f8768a;
        dig<String> digVar11 = this.f8769b;
        dig<ccy> digVar12 = this.f8772e;
        dig<cdn> digVar13 = this.f8771d;
        digVar7 = this.f8774g.f8162k;
        this.f8773f = dhu.m9447a(new cdm(digVar6, digVar10, digVar11, digVar12, digVar13, digVar7));
    }

    @Override // com.google.android.gms.internal.ads.cdl
    /* renamed from: a */
    public final cdf mo11455a() {
        return this.f8773f.mo9430a();
    }
}
