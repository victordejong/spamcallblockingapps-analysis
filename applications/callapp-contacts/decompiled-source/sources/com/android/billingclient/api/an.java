package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/an.class */
public final class an implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f6957a = Executors.defaultThreadFactory();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f6958b = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(d dVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f6957a.newThread(runnable);
        int andIncrement = this.f6958b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
