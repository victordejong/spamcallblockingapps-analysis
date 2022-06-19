package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/g.class */
final /* synthetic */ class ExecutorC9282g implements Executor {

    /* renamed from: d */
    static final Executor f39791d = new ExecutorC9282g();

    private ExecutorC9282g() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
