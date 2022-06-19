package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.android.play.core.tasks.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/q.class */
final class C8585q implements AbstractC8570b, AbstractC8569a {

    /* renamed from: a */
    private final CountDownLatch f38189a = new CountDownLatch(1);

    public /* synthetic */ C8585q(byte[] bArr) {
    }

    @Override // com.google.android.play.core.tasks.AbstractC8569a
    /* renamed from: a */
    public final void mo3297a(Exception exc) {
        this.f38189a.countDown();
    }

    /* renamed from: b */
    public final void m3296b() {
        this.f38189a.await();
    }

    @Override // com.google.android.play.core.tasks.AbstractC8570b
    public final void onSuccess(Object obj) {
        this.f38189a.countDown();
    }
}
