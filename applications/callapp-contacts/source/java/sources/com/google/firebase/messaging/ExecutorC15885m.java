package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.m */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/m.class */
public final /* synthetic */ class ExecutorC15885m implements Executor {

    /* renamed from: a */
    static final Executor f56431a = new ExecutorC15885m();

    private ExecutorC15885m() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
