package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/d.class */
final /* synthetic */ class ExecutorC9180d implements Executor {

    /* renamed from: d */
    static final Executor f39525d = new ExecutorC9180d();

    private ExecutorC9180d() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
