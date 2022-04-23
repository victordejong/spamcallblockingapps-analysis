package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmc.class */
public final class cmc<RequestComponentT extends aqx<AdT>, AdT> implements cmh<RequestComponentT, AdT> {

    /* renamed from: a  reason: collision with root package name */
    private final cmh<RequestComponentT, AdT> f26064a;

    /* renamed from: b  reason: collision with root package name */
    private RequestComponentT f26065b;

    public cmc(cmh<RequestComponentT, AdT> cmhVar) {
        this.f26064a = cmhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final RequestComponentT a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f26065b;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final dbt<AdT> a(cmm cmmVar, cmj<RequestComponentT> cmjVar) {
        synchronized (this) {
            if (cmmVar.f26071a != null) {
                RequestComponentT b2 = cmjVar.a(cmmVar.f26072b).b();
                this.f26065b = b2;
                aor<AdT> c2 = b2.c();
                return c2.a(c2.a(cmmVar.f26071a));
            }
            dbt<AdT> a2 = this.f26064a.a(cmmVar, cmjVar);
            this.f26065b = this.f26064a.a();
            return a2;
        }
    }
}
