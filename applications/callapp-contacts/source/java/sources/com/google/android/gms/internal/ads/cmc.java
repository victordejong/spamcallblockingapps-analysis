package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmc.class */
public final class cmc<RequestComponentT extends aqx<AdT>, AdT> implements cmh<RequestComponentT, AdT> {

    /* renamed from: a */
    private final cmh<RequestComponentT, AdT> f46072a;

    /* renamed from: b */
    private RequestComponentT f46073b;

    public cmc(cmh<RequestComponentT, AdT> cmhVar) {
        this.f46072a = cmhVar;
    }

    /* renamed from: b */
    public final RequestComponentT mo17412a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f46073b;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final dbt<AdT> mo17411a(cmm cmmVar, cmj<RequestComponentT> cmjVar) {
        synchronized (this) {
            if (cmmVar.f46079a == null) {
                dbt<AdT> mo17411a = this.f46072a.mo17411a(cmmVar, cmjVar);
                this.f46073b = this.f46072a.mo17412a();
                return mo17411a;
            }
            RequestComponentT mo18453b = cmjVar.mo17386a(cmmVar.f46080b).mo18453b();
            this.f46073b = mo18453b;
            aor<AdT> mo17838c = mo18453b.mo17838c();
            return mo17838c.m18507a(mo17838c.m18506a(cmmVar.f46079a));
        }
    }
}
