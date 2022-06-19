package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyr.class */
public final class dyr extends dyu<dzn> {

    /* renamed from: a */
    private final /* synthetic */ Context f16138a;

    /* renamed from: b */
    private final /* synthetic */ dyd f16139b;

    /* renamed from: c */
    private final /* synthetic */ String f16140c;

    /* renamed from: d */
    private final /* synthetic */ dyl f16141d;

    public dyr(dyl dylVar, Context context, dyd dydVar, String str) {
        this.f16141d = dylVar;
        this.f16138a = context;
        this.f16139b = dydVar;
        this.f16140c = str;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8168a() {
        dyl.m8180b(this.f16138a, "search");
        return new eca();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzn mo8167a(dzx dzxVar) {
        return dzxVar.mo8120a(BinderC2734b.m13794a(this.f16138a), this.f16139b, this.f16140c, 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ dzn mo8166b() {
        dxy dxyVar;
        dxyVar = this.f16141d.f16111a;
        return dxyVar.m8198a(this.f16138a, this.f16139b, this.f16140c, null, 3);
    }
}
