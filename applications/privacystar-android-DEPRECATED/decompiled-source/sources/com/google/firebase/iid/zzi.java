package com.google.firebase.iid;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzi.class */
final class zzi {
    private static final Executor zzad = zzk.zzaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Thread zza(Runnable runnable) {
        return new Thread(runnable, "firebase-iid-executor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor zze() {
        return zzad;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor zzf() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzj.zzae);
    }
}
