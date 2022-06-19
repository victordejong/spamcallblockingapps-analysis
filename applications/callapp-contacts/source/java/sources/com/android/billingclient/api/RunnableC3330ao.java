package com.android.billingclient.api;

import com.google.android.gms.internal.p360f.C13304a;
import java.util.concurrent.Future;
/* renamed from: com.android.billingclient.api.ao */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ao.class */
public final class RunnableC3330ao implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Future f12556a;

    /* renamed from: b */
    final /* synthetic */ Runnable f12557b;

    public RunnableC3330ao(C3337d c3337d, Future future, Runnable runnable) {
        this.f12556a = future;
        this.f12557b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f12556a.isDone() || this.f12556a.isCancelled()) {
            return;
        }
        this.f12556a.cancel(true);
        C13304a.m13373a("BillingClient", "Async task is taking too long, cancel it!");
        Runnable runnable = this.f12557b;
        if (runnable == null) {
            return;
        }
        runnable.run();
    }
}
