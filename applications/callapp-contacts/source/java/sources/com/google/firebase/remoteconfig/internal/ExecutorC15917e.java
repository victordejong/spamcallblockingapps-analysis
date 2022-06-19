package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.remoteconfig.internal.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/e.class */
final /* synthetic */ class ExecutorC15917e implements Executor {

    /* renamed from: a */
    private static final ExecutorC15917e f56508a = new ExecutorC15917e();

    private ExecutorC15917e() {
    }

    /* renamed from: a */
    public static Executor m8070a() {
        return f56508a;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
