package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$$Lambda$2.class */
final /* synthetic */ class FirebaseInstanceId$$Lambda$2 implements Executor {
    static final Executor $instance = new FirebaseInstanceId$$Lambda$2();

    private FirebaseInstanceId$$Lambda$2() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
