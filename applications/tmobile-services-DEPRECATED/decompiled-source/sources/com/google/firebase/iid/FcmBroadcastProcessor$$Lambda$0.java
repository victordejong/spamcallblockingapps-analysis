package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FcmBroadcastProcessor$$Lambda$0.class */
final /* synthetic */ class FcmBroadcastProcessor$$Lambda$0 implements Executor {
    static final Executor $instance = new FcmBroadcastProcessor$$Lambda$0();

    private FcmBroadcastProcessor$$Lambda$0() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
