package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfff.class */
public final class zzfff implements zzffc {
    private final zzffc zza;
    private final Queue<zzffb> zzb = new LinkedBlockingQueue();
    private final int zzc = ((Integer) zzbet.zzc().zzc(zzbjl.zzgl)).intValue();
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public zzfff(zzffc zzffcVar, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzffcVar;
        long intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzgk)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzffe
            private final zzfff zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc();
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.internal.ads.zzffc
    public final void zza(zzffb zzffbVar) {
        if (this.zzb.size() < this.zzc) {
            this.zzb.offer(zzffbVar);
        } else if (this.zzd.getAndSet(true)) {
        } else {
            Queue<zzffb> queue = this.zzb;
            zzffb zza = zzffb.zza("dropped_event");
            Map<String, String> zzj = zzffbVar.zzj();
            if (zzj.containsKey("action")) {
                zza.zzc("dropped_action", zzj.get("action"));
            }
            queue.offer(zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffc
    public final String zzb(zzffb zzffbVar) {
        return this.zza.zzb(zzffbVar);
    }

    public final /* bridge */ /* synthetic */ void zzc() {
        while (!this.zzb.isEmpty()) {
            this.zza.zza(this.zzb.remove());
        }
    }
}
