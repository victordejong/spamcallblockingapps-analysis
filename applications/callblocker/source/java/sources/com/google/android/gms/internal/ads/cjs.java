package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cjs.class */
final class cjs implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f13190a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, new StringBuilder(25).append("AdWorker(NG) #").append(this.f13190a.getAndIncrement()).toString());
    }
}
