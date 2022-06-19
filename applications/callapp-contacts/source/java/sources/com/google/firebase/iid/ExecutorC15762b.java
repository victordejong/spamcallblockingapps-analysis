package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/b.class */
final /* synthetic */ class ExecutorC15762b implements Executor {

    /* renamed from: a */
    static final Executor f56120a = new ExecutorC15762b();

    private ExecutorC15762b() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
