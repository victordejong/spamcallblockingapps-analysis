package com.google.android.play.core.tasks;

import java.util.concurrent.CountDownLatch;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/t.class */
public final class t implements b, c {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f31584a = new CountDownLatch(1);

    private t() {
    }

    public /* synthetic */ t(byte[] bArr) {
    }

    @Override // com.google.android.play.core.tasks.b
    public final void onFailure(Exception exc) {
        this.f31584a.countDown();
    }

    @Override // com.google.android.play.core.tasks.c
    public final void onSuccess(Object obj) {
        this.f31584a.countDown();
    }
}
