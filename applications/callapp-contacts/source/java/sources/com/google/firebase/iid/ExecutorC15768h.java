package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/h.class */
final /* synthetic */ class ExecutorC15768h implements Executor {

    /* renamed from: a */
    static final Executor f56135a = new ExecutorC15768h();

    private ExecutorC15768h() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
