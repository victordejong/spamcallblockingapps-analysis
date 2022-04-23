package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.cloudmessaging.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/z.class */
final /* synthetic */ class ExecutorC1544z implements Executor {

    /* renamed from: b */
    static final Executor f5800b = new ExecutorC1544z();

    private ExecutorC1544z() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
