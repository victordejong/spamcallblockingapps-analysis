package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csc.class */
final class csc implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f46480a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f46480a.getAndIncrement();
        StringBuilder sb = new StringBuilder(25);
        sb.append("AdWorker(NG) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
