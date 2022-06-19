package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/e.class */
final /* synthetic */ class ExecutorC15877e implements Executor {

    /* renamed from: a */
    static final Executor f56417a = new ExecutorC15877e();

    private ExecutorC15877e() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
