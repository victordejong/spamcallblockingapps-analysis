package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aoz;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cem.class */
public final class cem<RequestComponentT extends aoz<AdT>, AdT> implements cev<RequestComponentT, AdT> {

    /* renamed from: a */
    private final cev<RequestComponentT, AdT> f12830a;
    @GuardedBy("this")

    /* renamed from: b */
    private RequestComponentT f12831b;

    public cem(cev<RequestComponentT, AdT> cevVar) {
        this.f12830a = cevVar;
    }

    /* renamed from: b */
    public final RequestComponentT mo11430a() {
        RequestComponentT requestcomponentt;
        synchronized (this) {
            requestcomponentt = this.f12831b;
        }
        return requestcomponentt;
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final crt<AdT> mo11429a(cew cewVar, cex<RequestComponentT> cexVar) {
        crt<AdT> mo11429a;
        synchronized (this) {
            if (cewVar.f12843a != null) {
                this.f12831b = cexVar.mo11387a(cewVar.f12844b).mo12850b();
                mo11429a = this.f12831b.mo12051c().m12889b(cewVar.f12843a);
            } else {
                mo11429a = this.f12830a.mo11429a(cewVar, cexVar);
                this.f12831b = this.f12830a.mo11430a();
            }
        }
        return mo11429a;
    }
}
