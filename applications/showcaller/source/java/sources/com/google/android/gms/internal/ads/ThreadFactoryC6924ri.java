package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.internal.ads.ri */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ri.class */
final class ThreadFactoryC6924ri implements ThreadFactory {

    /* renamed from: a */
    final /* synthetic */ String f28958a = "Loader:ExtractorMediaPeriod";

    public ThreadFactoryC6924ri(String str) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f28958a);
    }
}
