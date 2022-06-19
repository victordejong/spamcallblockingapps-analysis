package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.ap */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ap.class */
final /* synthetic */ class ExecutorC4955ap implements Executor {

    /* renamed from: a */
    static final Executor f21099a = new ExecutorC4955ap();

    private ExecutorC4955ap() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
