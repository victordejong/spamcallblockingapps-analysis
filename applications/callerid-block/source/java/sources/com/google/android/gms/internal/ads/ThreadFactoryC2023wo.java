package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.wo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wo.class */
final class ThreadFactoryC2023wo implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f9037a = new AtomicInteger(1);

    /* renamed from: b */
    final /* synthetic */ String f9038b;

    public ThreadFactoryC2023wo(String str) {
        this.f9038b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f9038b;
        int andIncrement = this.f9037a.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
