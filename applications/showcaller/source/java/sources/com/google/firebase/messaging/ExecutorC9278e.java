package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/e.class */
final /* synthetic */ class ExecutorC9278e implements Executor {

    /* renamed from: d */
    static final Executor f39782d = new ExecutorC9278e();

    private ExecutorC9278e() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
