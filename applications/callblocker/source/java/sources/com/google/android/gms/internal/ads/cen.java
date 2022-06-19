package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aoz;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cen.class */
public final class cen<RequestComponentT extends aoz<AdT>, AdT> implements cev<RequestComponentT, AdT> {
    @GuardedBy("this")

    /* renamed from: a */
    private RequestComponentT f12832a;

    /* renamed from: b */
    public final RequestComponentT mo11430a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f12832a;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final crt<AdT> mo11429a(cew cewVar, cex<RequestComponentT> cexVar) {
        crt<AdT> m12891b;
        synchronized (this) {
            this.f12832a = cexVar.mo11387a(cewVar.f12844b).mo12850b();
            m12891b = this.f12832a.mo12051c().m12891b();
        }
        return m12891b;
    }
}
