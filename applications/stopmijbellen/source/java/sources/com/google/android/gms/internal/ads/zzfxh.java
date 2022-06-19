package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxh.class */
public final class zzfxh {
    public static zzfxb zza(ExecutorService executorService) {
        return executorService instanceof zzfxb ? (zzfxb) executorService : executorService instanceof ScheduledExecutorService ? new zzfxg((ScheduledExecutorService) executorService) : new zzfxd(executorService);
    }

    public static Executor zzb() {
        return zzfwe.INSTANCE;
    }

    public static Executor zzc(Executor executor, zzfvg<?> zzfvgVar) {
        Objects.requireNonNull(executor);
        return executor == zzfwe.INSTANCE ? executor : new zzfxc(executor, zzfvgVar);
    }
}
