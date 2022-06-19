package com.google.firebase.analytics.p292a;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.analytics.a.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/a/c.class */
final /* synthetic */ class ExecutorC8839c implements Executor {

    /* renamed from: d */
    static final Executor f38758d = new ExecutorC8839c();

    private ExecutorC8839c() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
