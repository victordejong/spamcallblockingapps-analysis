package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/l.class */
final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    final CountDownLatch f30017a = new CountDownLatch(1);

    private l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(ai aiVar) {
    }

    @Override // com.google.android.gms.tasks.c
    public final void a() {
        this.f30017a.countDown();
    }

    public final boolean a(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f30017a.await(j, timeUnit);
    }

    @Override // com.google.android.gms.tasks.e
    public final void onFailure(Exception exc) {
        this.f30017a.countDown();
    }

    @Override // com.google.android.gms.tasks.f
    public final void onSuccess(Object obj) {
        this.f30017a.countDown();
    }
}
