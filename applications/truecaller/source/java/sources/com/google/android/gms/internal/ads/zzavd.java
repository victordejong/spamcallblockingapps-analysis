package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavd.class */
public final class zzavd implements ThreadFactory {
    public final /* synthetic */ String zza = "Loader:ExtractorMediaPeriod";

    public zzavd(String str) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zza);
    }
}
