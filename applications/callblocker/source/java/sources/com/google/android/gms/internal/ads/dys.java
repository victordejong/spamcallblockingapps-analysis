package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dys.class */
public final class dys extends dyu<eae> {

    /* renamed from: a */
    private final /* synthetic */ Context f16142a;

    /* renamed from: b */
    private final /* synthetic */ dyl f16143b;

    public dys(dyl dylVar, Context context) {
        this.f16143b = dylVar;
        this.f16142a = context;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    protected final /* synthetic */ eae mo8168a() {
        dyl.m8180b(this.f16142a, "mobile_ads_settings");
        return new ecc();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ eae mo8167a(dzx dzxVar) {
        return dzxVar.mo8123a(BinderC2734b.m13794a(this.f16142a), 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ eae mo8166b() {
        ebx ebxVar;
        ebxVar = this.f16143b.f16113c;
        return ebxVar.m7974b(this.f16142a);
    }
}
