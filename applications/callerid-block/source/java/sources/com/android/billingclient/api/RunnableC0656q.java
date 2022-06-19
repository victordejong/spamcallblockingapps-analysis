package com.android.billingclient.api;

import com.android.billingclient.api.C0633g;
/* renamed from: com.android.billingclient.api.q */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class RunnableC0656q implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C0623b0 f3234b;

    /* renamed from: c */
    final /* synthetic */ CallableC0658r f3235c;

    public RunnableC0656q(CallableC0658r callableC0658r, C0623b0 c0623b0) {
        this.f3235c = callableC0658r;
        this.f3234b = c0623b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0648m abstractC0648m = this.f3235c.f3239c;
        C0633g.C0634a m11487c = C0633g.m11487c();
        m11487c.m11482c(this.f3234b.m11526b());
        m11487c.m11483b(this.f3234b.m11525c());
        abstractC0648m.m11460a(m11487c.m11484a(), this.f3234b.m11527a());
    }
}
