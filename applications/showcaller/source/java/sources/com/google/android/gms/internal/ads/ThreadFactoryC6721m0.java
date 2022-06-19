package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.m0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m0.class */
final class ThreadFactoryC6721m0 implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f26368a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f26369b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f26368a.newThread(runnable);
        int andIncrement = this.f26369b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
