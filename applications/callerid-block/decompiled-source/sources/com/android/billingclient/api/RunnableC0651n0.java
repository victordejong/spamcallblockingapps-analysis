package com.android.billingclient.api;

import e.c.a.a.a.e.a;
/* renamed from: com.android.billingclient.api.n0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/n0.class */
final class RunnableC0651n0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Exception f3221b;

    /* renamed from: c */
    final /* synthetic */ CallableC0655p0 f3222c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0651n0(CallableC0655p0 p0Var, Exception exc) {
        this.f3222c = p0Var;
        this.f3221b = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f3221b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        a.b("BillingClient", sb.toString());
        this.f3222c.f3232b.m11528a(C0672y.f3279l);
    }
}
