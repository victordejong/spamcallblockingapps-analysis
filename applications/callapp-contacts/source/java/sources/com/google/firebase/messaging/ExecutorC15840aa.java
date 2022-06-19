package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.aa */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aa.class */
final /* synthetic */ class ExecutorC15840aa implements Executor {

    /* renamed from: a */
    static final Executor f56319a = new ExecutorC15840aa();

    private ExecutorC15840aa() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
