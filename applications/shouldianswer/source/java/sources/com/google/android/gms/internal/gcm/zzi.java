package com.google.android.gms.internal.gcm;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzi.class */
final class zzi implements zzf {
    /* JADX INFO: Access modifiers changed from: private */
    public zzi() {
    }

    @Override // com.google.android.gms.internal.gcm.zzf
    public final ExecutorService zzd(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.gcm.zzf
    public final ExecutorService zzd(ThreadFactory threadFactory, int i) {
        return zzd(1, threadFactory, 9);
    }

    @Override // com.google.android.gms.internal.gcm.zzf
    public final ScheduledExecutorService zze(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
