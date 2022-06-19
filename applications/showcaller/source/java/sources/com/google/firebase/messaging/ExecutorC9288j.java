package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/j.class */
final /* synthetic */ class ExecutorC9288j implements Executor {

    /* renamed from: d */
    static final Executor f39799d = new ExecutorC9288j();

    private ExecutorC9288j() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
