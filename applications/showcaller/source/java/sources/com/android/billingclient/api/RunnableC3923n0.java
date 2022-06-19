package com.android.billingclient.api;

import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.n0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/n0.class */
final class RunnableC3923n0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Exception f12339d;

    /* renamed from: e */
    final /* synthetic */ CallableC3927p0 f12340e;

    public RunnableC3923n0(CallableC3927p0 callableC3927p0, Exception exc) {
        this.f12340e = callableC3927p0;
        this.f12339d = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f12339d);
        StringBuilder sb = new StringBuilder(valueOf.length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        C1870a.m28779b("BillingClient", sb.toString());
        this.f12340e.f12350b.mo23847a(C3944y.f12403q);
    }
}
