package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.xb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xb.class */
public final class ThreadFactoryC13035xb implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f50011a = new AtomicInteger(1);

    public ThreadFactoryC13035xb(C13019wo c13019wo) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f50011a.getAndIncrement();
        StringBuilder sb = new StringBuilder(42);
        sb.append("AdWorker(SCION_TASK_EXECUTOR) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
