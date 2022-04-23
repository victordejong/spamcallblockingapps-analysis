package com.android.billingclient.api;

import com.android.billingclient.api.C0633g;
/* renamed from: com.android.billingclient.api.q */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class RunnableC0656q implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C0623b0 f3234b;

    /* renamed from: c */
    final /* synthetic */ CallableC0658r f3235c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0656q(CallableC0658r rVar, C0623b0 b0Var) {
        this.f3235c = rVar;
        this.f3234b = b0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0648m mVar = this.f3235c.f3239c;
        C0633g.C0634a c = C0633g.m11487c();
        c.m11482c(this.f3234b.m11526b());
        c.m11483b(this.f3234b.m11525c());
        mVar.m11460a(c.m11484a(), this.f3234b.m11527a());
    }
}
