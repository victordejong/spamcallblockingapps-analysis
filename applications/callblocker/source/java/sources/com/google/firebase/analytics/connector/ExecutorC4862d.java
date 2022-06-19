package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.analytics.connector.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/d.class */
final /* synthetic */ class ExecutorC4862d implements Executor {

    /* renamed from: a */
    static final Executor f20929a = new ExecutorC4862d();

    private ExecutorC4862d() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
