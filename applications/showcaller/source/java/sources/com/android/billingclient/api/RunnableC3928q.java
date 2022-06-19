package com.android.billingclient.api;

import com.android.billingclient.api.C3905g;
/* renamed from: com.android.billingclient.api.q */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class RunnableC3928q implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C3894b0 f12352d;

    /* renamed from: e */
    final /* synthetic */ CallableC3930r f12353e;

    public RunnableC3928q(CallableC3930r callableC3930r, C3894b0 c3894b0) {
        this.f12353e = callableC3930r;
        this.f12352d = c3894b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3920m abstractC3920m = this.f12353e.f12357c;
        C3905g.C3906a m23778c = C3905g.m23778c();
        m23778c.m23773c(this.f12352d.m23845b());
        m23778c.m23774b(this.f12352d.m23844c());
        abstractC3920m.mo23751a(m23778c.m23775a(), this.f12352d.m23846a());
    }
}
