package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyq.class */
public final class dyq extends dyu<dzn> {

    /* renamed from: a */
    private final /* synthetic */ Context f16133a;

    /* renamed from: b */
    private final /* synthetic */ dyd f16134b;

    /* renamed from: c */
    private final /* synthetic */ String f16135c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC3280ko f16136d;

    /* renamed from: e */
    private final /* synthetic */ dyl f16137e;

    public dyq(dyl dylVar, Context context, dyd dydVar, String str, AbstractC3280ko abstractC3280ko) {
        this.f16137e = dylVar;
        this.f16133a = context;
        this.f16134b = dydVar;
        this.f16135c = str;
        this.f16136d = abstractC3280ko;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8168a() {
        dyl.m8180b(this.f16133a, "interstitial");
        return new eca();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8167a(dzx dzxVar) {
        return dzxVar.mo8115b(BinderC2734b.m13794a(this.f16133a), this.f16134b, this.f16135c, this.f16136d, 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ dzn mo8166b() {
        dxy dxyVar;
        dxyVar = this.f16137e.f16111a;
        return dxyVar.m8198a(this.f16133a, this.f16134b, this.f16135c, this.f16136d, 2);
    }
}
