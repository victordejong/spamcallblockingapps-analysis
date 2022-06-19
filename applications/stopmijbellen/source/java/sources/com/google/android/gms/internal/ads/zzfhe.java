package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfhe.class */
public final class zzfhe implements zzgpr<ScheduledExecutorService> {
    private final zzgqe<ThreadFactory> zza;

    public zzfhe(zzgqe<ThreadFactory> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfpi.zza();
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, this.zza.zzb()));
        zzgpz.zzb(unconfigurableScheduledExecutorService);
        return unconfigurableScheduledExecutorService;
    }
}
