package com.android.billingclient.api;

import e.c.a.a.a.e.a;
/* renamed from: com.android.billingclient.api.v0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v0.class */
final class RunnableC0667v0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f3256b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0639i f3257c;

    /* renamed from: d */
    final /* synthetic */ C0633g f3258d;

    /* renamed from: e */
    final /* synthetic */ String f3259e;

    RunnableC0667v0(d dVar, int i, AbstractC0639i abstractC0639i, C0633g c0633g, String str) {
        this.f3256b = i;
        this.f3257c = abstractC0639i;
        this.f3258d = c0633g;
        this.f3259e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f3256b;
        StringBuilder sb = new StringBuilder(63);
        sb.append("Error consuming purchase with token. Response code: ");
        sb.append(i);
        a.b("BillingClient", sb.toString());
        this.f3257c.m11474a(this.f3258d, this.f3259e);
    }
}
