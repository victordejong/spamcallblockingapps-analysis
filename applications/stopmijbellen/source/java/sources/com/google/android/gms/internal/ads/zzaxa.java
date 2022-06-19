package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxa.class */
final class zzaxa implements ThreadFactory {
    public final /* synthetic */ String zza = "Loader:ExtractorMediaPeriod";

    public zzaxa(String str) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zza);
    }
}
