package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzv.class */
public interface zzdzv extends ExecutorService {
    <T> zzdzw<T> zze(Callable<T> callable);

    zzdzw<?> zzg(Runnable runnable);
}
