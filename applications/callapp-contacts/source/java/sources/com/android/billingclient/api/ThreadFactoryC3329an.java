package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.android.billingclient.api.an */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/an.class */
public final class ThreadFactoryC3329an implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f12554a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f12555b = new AtomicInteger(1);

    public ThreadFactoryC3329an(C3337d c3337d) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f12554a.newThread(runnable);
        int andIncrement = this.f12555b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
