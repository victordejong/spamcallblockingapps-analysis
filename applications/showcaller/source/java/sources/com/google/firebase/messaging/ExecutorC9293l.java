package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/l.class */
public final /* synthetic */ class ExecutorC9293l implements Executor {

    /* renamed from: d */
    static final Executor f39808d = new ExecutorC9293l();

    private ExecutorC9293l() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
