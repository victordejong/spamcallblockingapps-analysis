package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.yj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yj.class */
final class ThreadFactoryC3653yj implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f17649a = new AtomicInteger(1);

    /* renamed from: b */
    private final /* synthetic */ String f17650b;

    public ThreadFactoryC3653yj(String str) {
        this.f17650b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f17650b;
        return new Thread(runnable, new StringBuilder(String.valueOf(str).length() + 23).append("AdWorker(").append(str).append(") #").append(this.f17649a.getAndIncrement()).toString());
    }
}
