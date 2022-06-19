package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.zf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zf.class */
final class ThreadFactoryC13093zf implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f50124a = new AtomicInteger(1);

    /* renamed from: b */
    private final /* synthetic */ String f50125b;

    public ThreadFactoryC13093zf(String str) {
        this.f50125b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f50125b;
        int andIncrement = this.f50124a.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
