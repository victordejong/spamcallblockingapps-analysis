package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.aw */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aw.class */
final /* synthetic */ class ExecutorC4963aw implements Executor {

    /* renamed from: a */
    static final Executor f21108a = new ExecutorC4963aw();

    private ExecutorC4963aw() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
