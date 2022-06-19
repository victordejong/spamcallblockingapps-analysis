package com.android.billingclient.api;

import java.util.concurrent.Future;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.s0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s0.class */
public final class RunnableC3933s0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Future f12363d;

    /* renamed from: e */
    final /* synthetic */ Runnable f12364e;

    public RunnableC3933s0(C3898d c3898d, Future future, Runnable runnable) {
        this.f12363d = future;
        this.f12364e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f12363d.isDone() || this.f12363d.isCancelled()) {
            return;
        }
        this.f12363d.cancel(true);
        C1870a.m28779b("BillingClient", "Async task is taking too long, cancel it!");
        Runnable runnable = this.f12364e;
        if (runnable == null) {
            return;
        }
        runnable.run();
    }
}
