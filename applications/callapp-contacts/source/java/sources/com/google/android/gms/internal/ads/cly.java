package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cly.class */
public final class cly<RequestComponentT extends aqx<AdT>, AdT> implements cmh<RequestComponentT, AdT> {

    /* renamed from: a */
    private RequestComponentT f46061a;

    /* renamed from: b */
    public final RequestComponentT mo17412a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f46061a;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final dbt<AdT> mo17411a(cmm cmmVar, cmj<RequestComponentT> cmjVar) {
        dbt<AdT> m18504b;
        synchronized (this) {
            RequestComponentT mo18453b = cmjVar.mo17386a(cmmVar.f46080b).mo18453b();
            this.f46061a = mo18453b;
            m18504b = mo18453b.mo17838c().m18504b();
        }
        return m18504b;
    }
}
