package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzy.class */
public final class zzdzy {
    public static zzdzv zza(ExecutorService executorService) {
        return executorService instanceof zzdzv ? (zzdzv) executorService : executorService instanceof ScheduledExecutorService ? new zzdzz((ScheduledExecutorService) executorService) : new zzeaa(executorService);
    }

    public static Executor zza(Executor executor, zzdyk<?> zzdykVar) {
        zzdwl.checkNotNull(executor);
        zzdwl.checkNotNull(zzdykVar);
        return executor == zzdzd.INSTANCE ? executor : new zzdzx(executor, zzdykVar);
    }

    public static Executor zzbaf() {
        return zzdzd.INSTANCE;
    }
}
