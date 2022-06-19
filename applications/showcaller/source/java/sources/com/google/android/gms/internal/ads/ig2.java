package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ig2.class */
public final class ig2<RequestComponentT extends g21<AdT>, AdT> implements sg2<RequestComponentT, AdT> {

    /* renamed from: a */
    private final sg2<RequestComponentT, AdT> f24267a;

    /* renamed from: b */
    private RequestComponentT f24268b;

    public ig2(sg2<RequestComponentT, AdT> sg2Var) {
        this.f24267a = sg2Var;
    }

    @Override // com.google.android.gms.internal.ads.sg2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 mo9227a(tg2 tg2Var, rg2 rg2Var, Object obj) {
        return m14403c(tg2Var, rg2Var, null);
    }

    /* renamed from: b */
    public final RequestComponentT mo9223e() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f24268b;
        }
        return requestcomponentt;
    }

    /* renamed from: c */
    public final r03<AdT> m14403c(tg2 tg2Var, rg2<RequestComponentT> rg2Var, RequestComponentT requestcomponentt) {
        synchronized (this) {
            this.f24268b = requestcomponentt;
            if (tg2Var.f29968a == null) {
                return ((hg2) this.f24267a).m14668c(tg2Var, rg2Var, requestcomponentt);
            }
            b01<AdT> mo8231o = requestcomponentt.mo8231o();
            return mo8231o.m16459d(mo8231o.m16461b(k03.m14003a(tg2Var.f29968a)));
        }
    }
}
