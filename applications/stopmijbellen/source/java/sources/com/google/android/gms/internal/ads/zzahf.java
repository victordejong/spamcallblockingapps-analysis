package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahf.class */
public final class zzahf implements zzagr {
    private final Map<String, List<zzags<?>>> zza = new HashMap();
    private final zzage zzb;
    private final BlockingQueue<zzags<?>> zzc;
    private final zzagj zzd;

    /* JADX WARN: Multi-variable type inference failed */
    public zzahf(zzage zzageVar, zzage zzageVar2, BlockingQueue<zzags<?>> blockingQueue, zzagj zzagjVar) {
        this.zzd = blockingQueue;
        this.zzb = zzageVar;
        this.zzc = zzageVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zza(zzags<?> zzagsVar) {
        synchronized (this) {
            String zzj = zzagsVar.zzj();
            List<zzags<?>> remove = this.zza.remove(zzj);
            if (remove == null || remove.isEmpty()) {
                return;
            }
            if (zzahe.zzb) {
                zzahe.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zzj);
            }
            zzags<?> remove2 = remove.remove(0);
            this.zza.put(zzj, remove);
            remove2.zzu(this);
            try {
                this.zzc.put(remove2);
            } catch (InterruptedException e) {
                zzahe.zzb("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.zzb.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final void zzb(zzags<?> zzagsVar, zzagy<?> zzagyVar) {
        List<zzags<?>> remove;
        zzagb zzagbVar = zzagyVar.zzb;
        if (zzagbVar == null || zzagbVar.zza(System.currentTimeMillis())) {
            zza(zzagsVar);
            return;
        }
        String zzj = zzagsVar.zzj();
        synchronized (this) {
            remove = this.zza.remove(zzj);
        }
        if (remove == null) {
            return;
        }
        if (zzahe.zzb) {
            zzahe.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zzj);
        }
        for (zzags<?> zzagsVar2 : remove) {
            this.zzd.zzb(zzagsVar2, zzagyVar, null);
        }
    }

    public final boolean zzc(zzags<?> zzagsVar) {
        synchronized (this) {
            String zzj = zzagsVar.zzj();
            if (!this.zza.containsKey(zzj)) {
                this.zza.put(zzj, null);
                zzagsVar.zzu(this);
                if (zzahe.zzb) {
                    zzahe.zza("new request, sending to network %s", zzj);
                }
                return false;
            }
            List<zzags<?>> list = this.zza.get(zzj);
            List<zzags<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            zzagsVar.zzm("waiting-for-response");
            list2.add(zzagsVar);
            this.zza.put(zzj, list2);
            if (zzahe.zzb) {
                zzahe.zza("Request for cacheKey=%s is in flight, putting on hold.", zzj);
            }
            return true;
        }
    }
}
