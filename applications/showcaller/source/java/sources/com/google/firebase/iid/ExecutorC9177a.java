package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/a.class */
final /* synthetic */ class ExecutorC9177a implements Executor {

    /* renamed from: d */
    static final Executor f39520d = new ExecutorC9177a();

    private ExecutorC9177a() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
