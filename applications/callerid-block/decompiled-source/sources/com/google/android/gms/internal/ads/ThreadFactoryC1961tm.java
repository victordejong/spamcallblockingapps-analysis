package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.tm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tm.class */
final class ThreadFactoryC1961tm implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f8607a = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadFactoryC1961tm(C2021wm wmVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f8607a.getAndIncrement();
        StringBuilder sb = new StringBuilder(42);
        sb.append("AdWorker(SCION_TASK_EXECUTOR) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
