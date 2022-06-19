package com.android.billingclient.api;

import e.c.a.a.a.e.a;
/* renamed from: com.android.billingclient.api.u0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/u0.class */
final class RunnableC0665u0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC0639i f3249b;

    /* renamed from: c */
    final /* synthetic */ C0633g f3250c;

    /* renamed from: d */
    final /* synthetic */ String f3251d;

    RunnableC0665u0(d dVar, AbstractC0639i abstractC0639i, C0633g c0633g, String str) {
        this.f3249b = abstractC0639i;
        this.f3250c = c0633g;
        this.f3251d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a("BillingClient", "Successfully consumed purchase.");
        this.f3249b.m11474a(this.f3250c, this.f3251d);
    }
}
