package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.tp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tp.class */
public final class ThreadFactoryC3524tp implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f17387a = new AtomicInteger(1);

    public ThreadFactoryC3524tp(C3509ta c3509ta) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, new StringBuilder(42).append("AdWorker(SCION_TASK_EXECUTOR) #").append(this.f17387a.getAndIncrement()).toString());
    }
}
