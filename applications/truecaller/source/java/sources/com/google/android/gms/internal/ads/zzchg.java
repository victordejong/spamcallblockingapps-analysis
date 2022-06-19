package com.google.android.gms.internal.ads;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchg.class */
public final class zzchg {
    public static final zzfsn zza;
    public static final zzfsn zzb;
    public static final zzfsn zzc;
    public static final ScheduledExecutorService zzd = new zzchb(3, new zzchc("Schedule"));
    public static final zzfsn zze = new zzche(new zzchd(), null);
    public static final zzfsn zzf = new zzche(zzfst.zza(), null);

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zza = new zzche(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, timeUnit, new SynchronousQueue(), new zzchc("Default")), null);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, timeUnit, new LinkedBlockingQueue(), new zzchc("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        zzb = new zzche(threadPoolExecutor, null);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new zzchc("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        zzc = new zzche(threadPoolExecutor2, null);
    }
}
