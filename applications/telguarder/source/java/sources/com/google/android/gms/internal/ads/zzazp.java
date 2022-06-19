package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazp.class */
public final class zzazp {
    public static final zzdzv zzeic;
    public static final zzdzv zzeid;
    public static final zzdzv zzeie;
    public static final ScheduledExecutorService zzeif;
    public static final zzdzv zzeig;
    public static final zzdzv zzeih;

    static {
        ExecutorService executorService;
        ExecutorService executorService2;
        zzeic = zza(ClientLibraryUtils.isPackageSide() ? zzdvd.zzayx().zza(zzfa("Default"), zzdvm.zzhvh) : new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), zzfa("Default")));
        if (ClientLibraryUtils.isPackageSide()) {
            executorService = zzdvd.zzayx().zza(5, zzfa("Loader"), zzdvm.zzhvg);
        } else {
            executorService = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzfa("Loader"));
            executorService.allowCoreThreadTimeOut(true);
        }
        zzeid = zza(executorService);
        if (ClientLibraryUtils.isPackageSide()) {
            executorService2 = zzdvd.zzayx().zzb(zzfa("Activeview"), zzdvm.zzhvg);
        } else {
            executorService2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzfa("Activeview"));
            executorService2.allowCoreThreadTimeOut(true);
        }
        zzeie = zza(executorService2);
        zzeif = new zzazs(3, zzfa(AppEventsConstants.EVENT_NAME_SCHEDULE));
        zzeig = zza(new zzazu());
        zzeih = zza(zzdzy.zzbaf());
    }

    private static zzdzv zza(Executor executor) {
        return new zzazt(executor, null);
    }

    private static ThreadFactory zzfa(String str) {
        return new zzazr(str);
    }
}
