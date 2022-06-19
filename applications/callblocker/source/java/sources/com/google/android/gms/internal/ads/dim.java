package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dim.class */
final class dim implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f14407a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f14408b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f14407a.newThread(runnable);
        newThread.setName(new StringBuilder(16).append("gads-").append(this.f14408b.getAndIncrement()).toString());
        return newThread;
    }
}
