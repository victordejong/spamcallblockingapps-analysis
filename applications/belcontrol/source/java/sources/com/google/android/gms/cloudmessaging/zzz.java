package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzz.class */
public final /* synthetic */ class zzz implements Executor {
    public static final Executor zza = new zzz();

    private zzz() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
