package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/d.class */
final /* synthetic */ class ExecutorC15764d implements Executor {

    /* renamed from: a */
    static final Executor f56124a = new ExecutorC15764d();

    private ExecutorC15764d() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
