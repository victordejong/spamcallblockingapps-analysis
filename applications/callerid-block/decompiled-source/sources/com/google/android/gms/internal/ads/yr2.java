package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yr2.class */
final class yr2 implements ThreadFactory {

    /* renamed from: a */
    final /* synthetic */ String f9241a = "Loader:ExtractorMediaPeriod";

    /* JADX INFO: Access modifiers changed from: package-private */
    public yr2(String str) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f9241a);
    }
}
