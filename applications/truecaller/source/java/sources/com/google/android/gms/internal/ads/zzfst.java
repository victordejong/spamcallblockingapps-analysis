package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfst.class */
public final class zzfst {
    public static Executor zza() {
        return zzfrr.INSTANCE;
    }

    public static zzfsn zzb(ExecutorService executorService) {
        return executorService instanceof zzfsn ? (zzfsn) executorService : executorService instanceof ScheduledExecutorService ? new zzfss((ScheduledExecutorService) executorService) : new zzfsp(executorService);
    }

    public static Executor zzc(Executor executor, zzfqw<?> zzfqwVar) {
        Objects.requireNonNull(executor);
        return executor == zzfrr.INSTANCE ? executor : new zzfso(executor, zzfqwVar);
    }
}
