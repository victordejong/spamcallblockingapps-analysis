package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzc.class */
final /* synthetic */ class zzc implements Executor {
    static final Executor zza = new zzc();

    private zzc() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
