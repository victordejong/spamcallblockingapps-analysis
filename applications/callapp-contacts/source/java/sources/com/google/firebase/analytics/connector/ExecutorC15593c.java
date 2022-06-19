package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.analytics.connector.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/c.class */
final /* synthetic */ class ExecutorC15593c implements Executor {

    /* renamed from: a */
    static final Executor f55954a = new ExecutorC15593c();

    private ExecutorC15593c() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
