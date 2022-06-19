package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgq.class */
final class zzfgq implements ThreadFactory {
    private final AtomicInteger zza = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, C0082b.m8758d(25, "AdWorker(NG) #", this.zza.getAndIncrement()));
    }
}
