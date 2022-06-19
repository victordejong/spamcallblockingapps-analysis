package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hg2.class */
public final class hg2<RequestComponentT extends g21<AdT>, AdT> implements sg2<RequestComponentT, AdT> {

    /* renamed from: a */
    private RequestComponentT f23898a;

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 mo9227a(tg2 tg2Var, rg2 rg2Var, Object obj) {
        return m14668c(tg2Var, rg2Var, null);
    }

    /* renamed from: b */
    public final RequestComponentT mo9223e() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f23898a;
        }
        return requestcomponentt;
    }

    /* renamed from: c */
    public final r03<AdT> m14668c(tg2 tg2Var, rg2<RequestComponentT> rg2Var, RequestComponentT requestcomponentt) {
        r03<AdT> m16459d;
        synchronized (this) {
            if (requestcomponentt != null) {
                this.f23898a = requestcomponentt;
            } else {
                this.f23898a = rg2Var.mo11470a(tg2Var.f29969b).mo8739d();
            }
            b01<AdT> mo8231o = this.f23898a.mo8231o();
            m16459d = mo8231o.m16459d(mo8231o.m16460c());
        }
        return m16459d;
    }
}
