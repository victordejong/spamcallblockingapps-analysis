package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjm.class */
public final class zzcjm {
    public static final zzfxb zza;
    public static final zzfxb zzb;
    public static final zzfxb zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzfxb zze;
    public static final zzfxb zzf;

    static {
        ExecutorService executorService;
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfpi.zza();
            executorService = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcji("Default")));
        } else {
            executorService = new ThreadPoolExecutor(2, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcji("Default"));
        }
        zza = new zzcjl(executorService, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor = zzfpi.zza().zzc(5, new zzcji("Loader"), 1);
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcji("Loader"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        zzb = new zzcjl(threadPoolExecutor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor2 = zzfpi.zza().zzb(new zzcji("Activeview"), 1);
        } else {
            threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcji("Activeview"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
        }
        zzc = new zzcjl(threadPoolExecutor2, null);
        zzd = new zzcjh(3, new zzcji("Schedule"));
        zze = new zzcjl(new zzcjj(), null);
        zzf = new zzcjl(zzfxh.zzb(), null);
    }
}
