package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/h.class */
final /* synthetic */ class ExecutorC15880h implements Executor {

    /* renamed from: a */
    static final Executor f56424a = new ExecutorC15880h();

    private ExecutorC15880h() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
