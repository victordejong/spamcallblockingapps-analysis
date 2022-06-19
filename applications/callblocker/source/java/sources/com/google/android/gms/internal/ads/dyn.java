package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyn.class */
public final class dyn extends dyu<dzn> {

    /* renamed from: a */
    private final /* synthetic */ Context f16121a;

    /* renamed from: b */
    private final /* synthetic */ dyd f16122b;

    /* renamed from: c */
    private final /* synthetic */ String f16123c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC3280ko f16124d;

    /* renamed from: e */
    private final /* synthetic */ dyl f16125e;

    public dyn(dyl dylVar, Context context, dyd dydVar, String str, AbstractC3280ko abstractC3280ko) {
        this.f16125e = dylVar;
        this.f16121a = context;
        this.f16122b = dydVar;
        this.f16123c = str;
        this.f16124d = abstractC3280ko;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8168a() {
        dyl.m8180b(this.f16121a, "banner");
        return new eca();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8167a(dzx dzxVar) {
        return dzxVar.mo8119a(BinderC2734b.m13794a(this.f16121a), this.f16122b, this.f16123c, this.f16124d, 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ dzn mo8166b() {
        dxy dxyVar;
        dxyVar = this.f16125e.f16111a;
        return dxyVar.m8198a(this.f16121a, this.f16122b, this.f16123c, this.f16124d, 1);
    }
}
