package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/h.class */
final /* synthetic */ class ExecutorC9184h implements Executor {

    /* renamed from: d */
    static final Executor f39536d = new ExecutorC9184h();

    private ExecutorC9184h() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
