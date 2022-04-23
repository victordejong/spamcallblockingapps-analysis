package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zf.class */
final class zf implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f28577a = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f28578b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zf(String str) {
        this.f28578b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f28578b;
        int andIncrement = this.f28577a.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
