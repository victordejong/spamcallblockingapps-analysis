package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtf.class */
final class dtf implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f47544a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f47545b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f47544a.newThread(runnable);
        int andIncrement = this.f47545b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
