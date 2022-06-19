package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyo.class */
public final class dyo extends dyu<AbstractC3371ny> {

    /* renamed from: a */
    private final /* synthetic */ Activity f16126a;

    /* renamed from: b */
    private final /* synthetic */ dyl f16127b;

    public dyo(dyl dylVar, Activity activity) {
        this.f16127b = dylVar;
        this.f16126a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    protected final /* synthetic */ AbstractC3371ny mo8168a() {
        dyl.m8180b(this.f16126a, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ AbstractC3371ny mo8167a(dzx dzxVar) {
        return dzxVar.mo8124a(BinderC2734b.m13794a(this.f16126a));
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ AbstractC3371ny mo8166b() {
        C3369nw c3369nw;
        c3369nw = this.f16127b.f16117g;
        return c3369nw.m7385a(this.f16126a);
    }
}
