package com.android.billingclient.api;

import com.google.android.gms.internal.f.a;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ao.class */
public final class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Future f6959a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Runnable f6960b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(d dVar, Future future, Runnable runnable) {
        this.f6959a = future;
        this.f6960b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f6959a.isDone() && !this.f6959a.isCancelled()) {
            this.f6959a.cancel(true);
            a.a("BillingClient", "Async task is taking too long, cancel it!");
            Runnable runnable = this.f6960b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
