package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwp.class */
public final class zzwp implements zzwb {
    private final Map<String, List<zzwc<?>>> zza = new HashMap();
    private final zzvo zzb;
    private final BlockingQueue<zzwc<?>> zzc;
    private final zzvt zzd;

    /* JADX WARN: Multi-variable type inference failed */
    public zzwp(zzvo zzvoVar, zzvo zzvoVar2, BlockingQueue<zzwc<?>> blockingQueue, zzvt zzvtVar) {
        this.zzd = blockingQueue;
        this.zzb = zzvoVar;
        this.zzc = zzvoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzwc<?> zzwcVar, zzwi<?> zzwiVar) {
        List<zzwc<?>> remove;
        zzvl zzvlVar = zzwiVar.zzb;
        if (zzvlVar == null || zzvlVar.zza(System.currentTimeMillis())) {
            zzb(zzwcVar);
            return;
        }
        String zzj = zzwcVar.zzj();
        synchronized (this) {
            remove = this.zza.remove(zzj);
        }
        if (remove == null) {
            return;
        }
        if (zzwo.zzb) {
            zzwo.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zzj);
        }
        for (zzwc<?> zzwcVar2 : remove) {
            this.zzd.zza(zzwcVar2, zzwiVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzb(zzwc<?> zzwcVar) {
        synchronized (this) {
            String zzj = zzwcVar.zzj();
            List<zzwc<?>> remove = this.zza.remove(zzj);
            if (remove == null || remove.isEmpty()) {
                return;
            }
            if (zzwo.zzb) {
                zzwo.zza("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zzj);
            }
            zzwc<?> remove2 = remove.remove(0);
            this.zza.put(zzj, remove);
            remove2.zzv(this);
            try {
                this.zzc.put(remove2);
            } catch (InterruptedException e) {
                zzwo.zzc("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.zzb.zzb();
            }
        }
    }

    public final boolean zzc(zzwc<?> zzwcVar) {
        synchronized (this) {
            String zzj = zzwcVar.zzj();
            if (!this.zza.containsKey(zzj)) {
                this.zza.put(zzj, null);
                zzwcVar.zzv(this);
                if (zzwo.zzb) {
                    zzwo.zzb("new request, sending to network %s", zzj);
                }
                return false;
            }
            List<zzwc<?>> list = this.zza.get(zzj);
            List<zzwc<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            zzwcVar.zzd("waiting-for-response");
            list2.add(zzwcVar);
            this.zza.put(zzj, list2);
            if (zzwo.zzb) {
                zzwo.zzb("Request for cacheKey=%s is in flight, putting on hold.", zzj);
            }
            return true;
        }
    }
}
