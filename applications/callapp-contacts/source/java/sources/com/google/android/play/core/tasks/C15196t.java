package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.android.play.core.tasks.t */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/t.class */
public final class C15196t implements AbstractC15178b, AbstractC15179c {

    /* renamed from: a */
    public final CountDownLatch f55032a = new CountDownLatch(1);

    private C15196t() {
    }

    public /* synthetic */ C15196t(byte[] bArr) {
    }

    @Override // com.google.android.play.core.tasks.AbstractC15178b
    public final void onFailure(Exception exc) {
        this.f55032a.countDown();
    }

    @Override // com.google.android.play.core.tasks.AbstractC15179c
    public final void onSuccess(Object obj) {
        this.f55032a.countDown();
    }
}
