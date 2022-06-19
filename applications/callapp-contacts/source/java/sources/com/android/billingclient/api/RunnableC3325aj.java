package com.android.billingclient.api;

import com.google.android.gms.internal.p360f.C13304a;
/* renamed from: com.android.billingclient.api.aj */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/aj.class */
final class RunnableC3325aj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Exception f12545a;

    /* renamed from: b */
    final /* synthetic */ CallableC3327al f12546b;

    public RunnableC3325aj(CallableC3327al callableC3327al, Exception exc) {
        this.f12546b = callableC3327al;
        this.f12545a = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f12545a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        C13304a.m13373a("BillingClient", sb.toString());
        this.f12546b.f12551b.mo28287a(C3362y.f12659q);
    }
}
