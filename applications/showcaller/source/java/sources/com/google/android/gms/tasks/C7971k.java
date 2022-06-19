package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.tasks.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/k.class */
final class C7971k implements AbstractC7972l {

    /* renamed from: a */
    private final CountDownLatch f35954a = new CountDownLatch(1);

    public /* synthetic */ C7971k(RunnableC7967g0 runnableC7967g0) {
    }

    @Override // com.google.android.gms.tasks.AbstractC7960d
    /* renamed from: a */
    public final void mo5788a(Exception exc) {
        this.f35954a.countDown();
    }

    /* renamed from: b */
    public final void m5793b() {
        this.f35954a.await();
    }

    @Override // com.google.android.gms.tasks.AbstractC7956b
    /* renamed from: c */
    public final void mo5787c() {
        this.f35954a.countDown();
    }

    /* renamed from: d */
    public final boolean m5792d(long j, TimeUnit timeUnit) {
        return this.f35954a.await(j, timeUnit);
    }

    @Override // com.google.android.gms.tasks.AbstractC7962e
    public final void onSuccess(Object obj) {
        this.f35954a.countDown();
    }
}
