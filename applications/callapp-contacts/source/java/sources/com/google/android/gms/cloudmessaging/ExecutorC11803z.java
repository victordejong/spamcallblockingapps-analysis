package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.cloudmessaging.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/z.class */
final /* synthetic */ class ExecutorC11803z implements Executor {

    /* renamed from: a */
    static final Executor f39148a = new ExecutorC11803z();

    private ExecutorC11803z() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
