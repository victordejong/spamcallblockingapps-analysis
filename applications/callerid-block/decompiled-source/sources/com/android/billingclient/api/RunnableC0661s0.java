package com.android.billingclient.api;

import e.c.a.a.a.e.a;
import java.util.concurrent.Future;
/* renamed from: com.android.billingclient.api.s0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s0.class */
final class RunnableC0661s0 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Future f3245b;

    /* renamed from: c */
    final /* synthetic */ Runnable f3246c;

    RunnableC0661s0(d dVar, Future future, Runnable runnable) {
        this.f3245b = future;
        this.f3246c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f3245b.isDone() && !this.f3245b.isCancelled()) {
            this.f3245b.cancel(true);
            a.b("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.f3246c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
