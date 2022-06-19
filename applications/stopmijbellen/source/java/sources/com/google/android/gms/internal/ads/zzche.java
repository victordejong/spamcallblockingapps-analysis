package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzche.class */
public final class zzche implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    public zzche(zzchh zzchhVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, C0082b.m8758d(42, "AdWorker(SCION_TASK_EXECUTOR) #", this.zza.getAndIncrement()));
    }
}
