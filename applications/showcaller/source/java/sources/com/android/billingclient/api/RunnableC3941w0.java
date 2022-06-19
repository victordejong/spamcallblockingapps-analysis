package com.android.billingclient.api;

import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.w0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/w0.class */
public final class RunnableC3941w0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Exception f12378d;

    /* renamed from: e */
    final /* synthetic */ AbstractC3911i f12379e;

    /* renamed from: f */
    final /* synthetic */ String f12380f;

    public RunnableC3941w0(C3898d c3898d, Exception exc, AbstractC3911i abstractC3911i, String str) {
        this.f12378d = exc;
        this.f12379e = abstractC3911i;
        this.f12380f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f12378d);
        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
        sb.append("Error consuming purchase; ex: ");
        sb.append(valueOf);
        C1870a.m28779b("BillingClient", sb.toString());
        this.f12379e.mo23765a(C3944y.f12403q, this.f12380f);
    }
}
