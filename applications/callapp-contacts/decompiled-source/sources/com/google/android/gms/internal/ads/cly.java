package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cly.class */
public final class cly<RequestComponentT extends aqx<AdT>, AdT> implements cmh<RequestComponentT, AdT> {

    /* renamed from: a  reason: collision with root package name */
    private RequestComponentT f26054a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final RequestComponentT a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f26054a;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final dbt<AdT> a(cmm cmmVar, cmj<RequestComponentT> cmjVar) {
        dbt<AdT> b2;
        synchronized (this) {
            RequestComponentT b3 = cmjVar.a(cmmVar.f26072b).b();
            this.f26054a = b3;
            b2 = b3.c().b();
        }
        return b2;
    }
}
