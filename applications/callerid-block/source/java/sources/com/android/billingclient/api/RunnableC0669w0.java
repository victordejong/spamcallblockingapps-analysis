package com.android.billingclient.api;

import e.c.a.a.a.e.a;
/* renamed from: com.android.billingclient.api.w0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/w0.class */
final class RunnableC0669w0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Exception f3260b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0639i f3261c;

    /* renamed from: d */
    final /* synthetic */ String f3262d;

    RunnableC0669w0(d dVar, Exception exc, AbstractC0639i abstractC0639i, String str) {
        this.f3260b = exc;
        this.f3261c = abstractC0639i;
        this.f3262d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f3260b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
        sb.append("Error consuming purchase; ex: ");
        sb.append(valueOf);
        a.b("BillingClient", sb.toString());
        this.f3261c.m11474a(C0672y.f3279l, this.f3262d);
    }
}
