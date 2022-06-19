package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.android.billingclient.api.r0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r0.class */
public final class ThreadFactoryC3931r0 implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f12359a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f12360b = new AtomicInteger(1);

    public ThreadFactoryC3931r0(C3898d c3898d) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f12359a.newThread(runnable);
        int andIncrement = this.f12360b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
