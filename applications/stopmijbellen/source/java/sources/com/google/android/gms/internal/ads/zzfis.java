package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfis.class */
public final class zzfis implements zzfio {
    private final zzfio zza;
    private final Queue<zzfin> zzb = new LinkedBlockingQueue();
    private final int zzc = ((Integer) zzbgq.zzc().zzb(zzblj.zzgt)).intValue();
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public zzfis(zzfio zzfioVar, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzfioVar;
        long intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzgs)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfir
            @Override // java.lang.Runnable
            public final void run() {
                zzfis.zzc(zzfis.this);
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    public static /* synthetic */ void zzc(zzfis zzfisVar) {
        while (!zzfisVar.zzb.isEmpty()) {
            zzfisVar.zza.zzb(zzfisVar.zzb.remove());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfio
    public final String zza(zzfin zzfinVar) {
        return this.zza.zza(zzfinVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfio
    public final void zzb(zzfin zzfinVar) {
        if (this.zzb.size() < this.zzc) {
            this.zzb.offer(zzfinVar);
        } else if (this.zzd.getAndSet(true)) {
        } else {
            Queue<zzfin> queue = this.zzb;
            zzfin zzb = zzfin.zzb("dropped_event");
            Map<String, String> zzj = zzfinVar.zzj();
            if (zzj.containsKey("action")) {
                zzb.zza("dropped_action", zzj.get("action"));
            }
            queue.offer(zzb);
        }
    }
}
