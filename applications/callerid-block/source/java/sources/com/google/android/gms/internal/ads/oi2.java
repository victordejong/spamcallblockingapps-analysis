package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oi2.class */
final class oi2 implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f7851a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f7852b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f7851a.newThread(runnable);
        int andIncrement = this.f7852b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
