package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mi0.class */
final class mi0 implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f26604a = new AtomicInteger(1);

    /* renamed from: b */
    final /* synthetic */ String f26605b;

    public mi0(String str) {
        this.f26605b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f26605b;
        int andIncrement = this.f26604a.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
