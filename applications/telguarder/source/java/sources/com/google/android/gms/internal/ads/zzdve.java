package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdve.class */
public interface zzdve {
    ExecutorService zza(int i, ThreadFactory threadFactory, int i2);

    ExecutorService zza(ThreadFactory threadFactory, int i);

    ExecutorService zzb(ThreadFactory threadFactory, int i);

    ScheduledExecutorService zzb(int i, ThreadFactory threadFactory, int i2);

    ExecutorService zzel(int i);

    ExecutorService zzem(int i);
}
