package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.v0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/v0.class */
final /* synthetic */ class ExecutorC9317v0 implements Executor {

    /* renamed from: d */
    static final Executor f39878d = new ExecutorC9317v0();

    private ExecutorC9317v0() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
