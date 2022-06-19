package com.google.firebase.messaging;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/zzh.class */
final /* synthetic */ class zzh implements Executor {
    static final Executor zza = new zzh();

    private zzh() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
