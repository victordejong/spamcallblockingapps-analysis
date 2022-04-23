package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdln.class */
public final class zzdln<RequestComponentT extends zzbtn<AdT>, AdT> implements zzdlv<RequestComponentT, AdT> {

    /* renamed from: a */
    public RequestComponentT f27488a;

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final zzdzc<AdT> mo13517a(zzdlw zzdlwVar, zzdlx<RequestComponentT> zzdlxVar) {
        zzdzc<AdT> b;
        synchronized (this) {
            RequestComponentT c = zzdlxVar.mo13516a(zzdlwVar.f27492b).mo15052c();
            this.f27488a = c;
            b = c.mo14140a().m15123b();
        }
        return b;
    }

    /* renamed from: b */
    public final RequestComponentT mo13518a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f27488a;
        }
        return requestcomponentt;
    }
}
