package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.k */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/k.class */
final /* synthetic */ class ExecutorC15883k implements Executor {

    /* renamed from: a */
    static final Executor f56429a = new ExecutorC15883k();

    private ExecutorC15883k() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
