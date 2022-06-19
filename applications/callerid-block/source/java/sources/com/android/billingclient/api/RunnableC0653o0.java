package com.android.billingclient.api;

import com.android.billingclient.api.C0633g;
/* renamed from: com.android.billingclient.api.o0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o0.class */
final class RunnableC0653o0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f3226b;

    /* renamed from: c */
    final /* synthetic */ String f3227c;

    /* renamed from: d */
    final /* synthetic */ CallableC0655p0 f3228d;

    public RunnableC0653o0(CallableC0655p0 callableC0655p0, int i, String str) {
        this.f3228d = callableC0655p0;
        this.f3226b = i;
        this.f3227c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0622b abstractC0622b = this.f3228d.f3232b;
        C0633g.C0634a m11487c = C0633g.m11487c();
        m11487c.m11482c(this.f3226b);
        m11487c.m11483b(this.f3227c);
        abstractC0622b.m11528a(m11487c.m11484a());
    }
}
