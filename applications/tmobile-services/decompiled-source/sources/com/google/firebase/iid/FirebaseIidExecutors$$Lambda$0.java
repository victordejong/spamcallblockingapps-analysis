package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseIidExecutors$$Lambda$0.class */
final /* synthetic */ class FirebaseIidExecutors$$Lambda$0 implements Executor {
    static final Executor $instance = new FirebaseIidExecutors$$Lambda$0();

    private FirebaseIidExecutors$$Lambda$0() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
