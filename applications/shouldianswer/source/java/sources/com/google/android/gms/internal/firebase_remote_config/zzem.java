package com.google.android.gms.internal.firebase_remote_config;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzem.class */
final /* synthetic */ class zzem implements Executor {
    static final Executor zzko = new zzem();

    private zzem() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
