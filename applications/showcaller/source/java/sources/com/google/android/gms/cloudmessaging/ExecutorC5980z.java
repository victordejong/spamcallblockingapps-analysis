package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.cloudmessaging.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/z.class */
final /* synthetic */ class ExecutorC5980z implements Executor {

    /* renamed from: d */
    static final Executor f19144d = new ExecutorC5980z();

    private ExecutorC5980z() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
