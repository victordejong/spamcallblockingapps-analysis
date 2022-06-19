package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.android.billingclient.api.r0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r0.class */
final class ThreadFactoryC0659r0 implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f3241a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f3242b = new AtomicInteger(1);

    ThreadFactoryC0659r0(d dVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f3241a.newThread(runnable);
        int andIncrement = this.f3242b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
