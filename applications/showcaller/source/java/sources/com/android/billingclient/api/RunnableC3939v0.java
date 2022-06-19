package com.android.billingclient.api;

import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.v0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v0.class */
public final class RunnableC3939v0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f12374d;

    /* renamed from: e */
    final /* synthetic */ AbstractC3911i f12375e;

    /* renamed from: f */
    final /* synthetic */ C3905g f12376f;

    /* renamed from: g */
    final /* synthetic */ String f12377g;

    public RunnableC3939v0(C3898d c3898d, int i, AbstractC3911i abstractC3911i, C3905g c3905g, String str) {
        this.f12374d = i;
        this.f12375e = abstractC3911i;
        this.f12376f = c3905g;
        this.f12377g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f12374d;
        StringBuilder sb = new StringBuilder(63);
        sb.append("Error consuming purchase with token. Response code: ");
        sb.append(i);
        C1870a.m28779b("BillingClient", sb.toString());
        this.f12375e.mo23765a(this.f12376f, this.f12377g);
    }
}
