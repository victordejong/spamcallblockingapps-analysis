package com.android.billingclient.api;

import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.u0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/u0.class */
public final class RunnableC3937u0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC3911i f12367d;

    /* renamed from: e */
    final /* synthetic */ C3905g f12368e;

    /* renamed from: f */
    final /* synthetic */ String f12369f;

    public RunnableC3937u0(C3898d c3898d, AbstractC3911i abstractC3911i, C3905g c3905g, String str) {
        this.f12367d = abstractC3911i;
        this.f12368e = c3905g;
        this.f12369f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1870a.m28780a("BillingClient", "Successfully consumed purchase.");
        this.f12367d.mo23765a(this.f12368e, this.f12369f);
    }
}
