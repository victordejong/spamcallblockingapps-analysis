package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.tasks.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/l.class */
final class C14189l implements AbstractC14190m {

    /* renamed from: a */
    final CountDownLatch f52145a = new CountDownLatch(1);

    private C14189l() {
    }

    public /* synthetic */ C14189l(RunnableC14177ai runnableC14177ai) {
    }

    @Override // com.google.android.gms.tasks.AbstractC14180c
    /* renamed from: a */
    public final void mo8074a() {
        this.f52145a.countDown();
    }

    /* renamed from: a */
    public final boolean m11457a(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f52145a.await(j, timeUnit);
    }

    @Override // com.google.android.gms.tasks.AbstractC14182e
    public final void onFailure(Exception exc) {
        this.f52145a.countDown();
    }

    @Override // com.google.android.gms.tasks.AbstractC14183f
    public final void onSuccess(Object obj) {
        this.f52145a.countDown();
    }
}
