package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.ax */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ax.class */
final /* synthetic */ class ExecutorC15868ax implements Executor {

    /* renamed from: a */
    static final Executor f56398a = new ExecutorC15868ax();

    private ExecutorC15868ax() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
