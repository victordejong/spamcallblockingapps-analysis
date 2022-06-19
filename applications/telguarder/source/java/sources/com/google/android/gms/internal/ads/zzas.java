package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzas.class */
public final class zzas implements zzad {
    private final zzm zzbn;
    private final zzal zzby;
    private final BlockingQueue<zzab<?>> zzm;
    private final Map<String, List<zzab<?>>> zzbx = new HashMap();
    private final zzaf zzau = null;

    public zzas(zzm zzmVar, BlockingQueue<zzab<?>> blockingQueue, zzal zzalVar) {
        this.zzby = zzalVar;
        this.zzbn = zzmVar;
        this.zzm = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final void zzb(zzab<?> zzabVar, zzag<?> zzagVar) {
        List<zzab<?>> remove;
        if (zzagVar.zzbq == null || zzagVar.zzbq.zza()) {
            zzc(zzabVar);
            return;
        }
        String zze = zzabVar.zze();
        synchronized (this) {
            remove = this.zzbx.remove(zze);
        }
        if (remove == null) {
            return;
        }
        if (zzao.DEBUG) {
            zzao.m1354v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zze);
        }
        for (zzab<?> zzabVar2 : remove) {
            this.zzby.zza(zzabVar2, zzagVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final void zzc(zzab<?> zzabVar) {
        BlockingQueue<zzab<?>> blockingQueue;
        synchronized (this) {
            String zze = zzabVar.zze();
            List<zzab<?>> remove = this.zzbx.remove(zze);
            if (remove != null && !remove.isEmpty()) {
                if (zzao.DEBUG) {
                    zzao.m1354v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zze);
                }
                zzab<?> remove2 = remove.remove(0);
                this.zzbx.put(zze, remove);
                remove2.zza((zzad) this);
                if (this.zzbn != null && (blockingQueue = this.zzm) != null) {
                    try {
                        blockingQueue.put(remove2);
                    } catch (InterruptedException e) {
                        zzao.m1355e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.zzbn.quit();
                    }
                }
            }
        }
    }

    public final boolean zzg(zzab<?> zzabVar) {
        synchronized (this) {
            String zze = zzabVar.zze();
            if (!this.zzbx.containsKey(zze)) {
                this.zzbx.put(zze, null);
                zzabVar.zza((zzad) this);
                if (zzao.DEBUG) {
                    zzao.m1356d("new request, sending to network %s", zze);
                }
                return false;
            }
            List<zzab<?>> list = this.zzbx.get(zze);
            List<zzab<?>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            zzabVar.zzc("waiting-for-response");
            list2.add(zzabVar);
            this.zzbx.put(zze, list2);
            if (zzao.DEBUG) {
                zzao.m1356d("Request for cacheKey=%s is in flight, putting on hold.", zze);
            }
            return true;
        }
    }
}
