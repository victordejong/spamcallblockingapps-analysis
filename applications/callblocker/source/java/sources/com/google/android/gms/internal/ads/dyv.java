package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyv.class */
public final class dyv extends dyu<AbstractC3452qy> {

    /* renamed from: a */
    private final /* synthetic */ Context f16149a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3280ko f16150b;

    /* renamed from: c */
    private final /* synthetic */ dyl f16151c;

    public dyv(dyl dylVar, Context context, AbstractC3280ko abstractC3280ko) {
        this.f16151c = dylVar;
        this.f16149a = context;
        this.f16150b = abstractC3280ko;
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    protected final /* synthetic */ AbstractC3452qy mo8168a() {
        dyl.m8180b(this.f16149a, "rewarded_video");
        return new ecf();
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: a */
    public final /* synthetic */ AbstractC3452qy mo8167a(dzx dzxVar) {
        return dzxVar.mo8118a(BinderC2734b.m13794a(this.f16149a), this.f16150b, 201004000);
    }

    @Override // com.google.android.gms.internal.ads.dyu
    /* renamed from: b */
    public final /* synthetic */ AbstractC3452qy mo8166b() {
        C3460rf c3460rf;
        c3460rf = this.f16151c.f16115e;
        return c3460rf.m7265a(this.f16149a, this.f16150b);
    }
}
