package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyt.class */
public final class dyt extends dyu<dzg> {

    /* renamed from: a */
    private final /* synthetic */ Context f16144a;

    /* renamed from: b */
    private final /* synthetic */ String f16145b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC3280ko f16146c;

    /* renamed from: d */
    private final /* synthetic */ dyl f16147d;

    public dyt(dyl dylVar, Context context, String str, AbstractC3280ko abstractC3280ko) {
        this.f16147d = dylVar;
        this.f16144a = context;
        this.f16145b = str;
        this.f16146c = abstractC3280ko;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    protected final /* synthetic */ dzg mo8168a() {
        dyl.m8180b(this.f16144a, "native_ad");
        return new ebw();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ dzg mo8167a(dzx dzxVar) {
        return dzxVar.mo8117a(BinderC2734b.m13794a(this.f16144a), this.f16145b, this.f16146c, 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ dzg mo8166b() {
        dxv dxvVar;
        dxvVar = this.f16147d.f16112b;
        return dxvVar.m8199a(this.f16144a, this.f16145b, this.f16146c);
    }
}
