package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxb.class */
public interface zzfxb extends ExecutorService {
    zzfxa<?> zza(Runnable runnable);

    <T> zzfxa<T> zzb(Callable<T> callable);
}
