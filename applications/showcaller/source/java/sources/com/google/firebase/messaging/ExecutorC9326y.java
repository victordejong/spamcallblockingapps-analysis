package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.y */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/y.class */
final /* synthetic */ class ExecutorC9326y implements Executor {

    /* renamed from: d */
    static final Executor f39885d = new ExecutorC9326y();

    private ExecutorC9326y() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
