package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.remoteconfig.internal.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/d.class */
final /* synthetic */ class ExecutorC2513d implements Executor {

    /* renamed from: b */
    private static final ExecutorC2513d f10793b = new ExecutorC2513d();

    private ExecutorC2513d() {
    }

    /* renamed from: b */
    public static Executor m3276b() {
        return f10793b;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
