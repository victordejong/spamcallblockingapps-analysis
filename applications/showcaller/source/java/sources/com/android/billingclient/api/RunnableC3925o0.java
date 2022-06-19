package com.android.billingclient.api;

import com.android.billingclient.api.C3905g;
/* renamed from: com.android.billingclient.api.o0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o0.class */
final class RunnableC3925o0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f12344d;

    /* renamed from: e */
    final /* synthetic */ String f12345e;

    /* renamed from: f */
    final /* synthetic */ CallableC3927p0 f12346f;

    public RunnableC3925o0(CallableC3927p0 callableC3927p0, int i, String str) {
        this.f12346f = callableC3927p0;
        this.f12344d = i;
        this.f12345e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3893b abstractC3893b = this.f12346f.f12350b;
        C3905g.C3906a m23778c = C3905g.m23778c();
        m23778c.m23773c(this.f12344d);
        m23778c.m23774b(this.f12345e);
        abstractC3893b.mo23847a(m23778c.m23775a());
    }
}
