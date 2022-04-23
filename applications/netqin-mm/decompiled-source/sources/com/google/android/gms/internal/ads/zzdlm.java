package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdlm.class */
public final class zzdlm<RequestComponentT extends zzbtn<AdT>, AdT> implements zzdlv<RequestComponentT, AdT> {

    /* renamed from: a */
    public final zzdlv<RequestComponentT, AdT> f27486a;

    /* renamed from: b */
    public RequestComponentT f27487b;

    public zzdlm(zzdlv<RequestComponentT, AdT> zzdlvVar) {
        this.f27486a = zzdlvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final zzdzc<AdT> mo13517a(zzdlw zzdlwVar, zzdlx<RequestComponentT> zzdlxVar) {
        synchronized (this) {
            if (zzdlwVar.f27491a != null) {
                RequestComponentT c = zzdlxVar.mo13516a(zzdlwVar.f27492b).mo15052c();
                this.f27487b = c;
                return c.mo14140a().m15122b(zzdlwVar.f27491a);
            }
            zzdzc<AdT> a = this.f27486a.mo13517a(zzdlwVar, zzdlxVar);
            this.f27487b = this.f27486a.mo13518a();
            return a;
        }
    }

    /* renamed from: b */
    public final RequestComponentT mo13518a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f27487b;
        }
        return requestcomponentt;
    }
}
