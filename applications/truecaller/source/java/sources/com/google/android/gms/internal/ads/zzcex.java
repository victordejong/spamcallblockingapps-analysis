package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcex.class */
public final class zzcex implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    public zzcex(zzcfa zzcfaVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, C22128a.m8690L1(42, "AdWorker(SCION_TASK_EXECUTOR) #", this.zza.getAndIncrement()));
    }
}
