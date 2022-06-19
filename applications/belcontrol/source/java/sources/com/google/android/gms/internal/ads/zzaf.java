package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaf.class */
public final class zzaf {
    private final zzu zzai;
    private final AtomicInteger zzbi;
    private final Set<zzab<?>> zzbj;
    private final PriorityBlockingQueue<zzab<?>> zzbk;
    private final PriorityBlockingQueue<zzab<?>> zzbl;
    private final zzx[] zzbm;
    private zzm zzbn;
    private final List<zzah> zzbo;
    private final List<zzae> zzbp;
    private final zzk zzn;
    private final zzal zzo;

    public zzaf(zzk zzkVar, zzu zzuVar) {
        this(zzkVar, zzuVar, 4);
    }

    private zzaf(zzk zzkVar, zzu zzuVar, int i) {
        this(zzkVar, zzuVar, 4, new zzq(new Handler(Looper.getMainLooper())));
    }

    private zzaf(zzk zzkVar, zzu zzuVar, int i, zzal zzalVar) {
        this.zzbi = new AtomicInteger();
        this.zzbj = new HashSet();
        this.zzbk = new PriorityBlockingQueue<>();
        this.zzbl = new PriorityBlockingQueue<>();
        this.zzbo = new ArrayList();
        this.zzbp = new ArrayList();
        this.zzn = zzkVar;
        this.zzai = zzuVar;
        this.zzbm = new zzx[4];
        this.zzo = zzalVar;
    }

    public final void start() {
        zzx[] zzxVarArr;
        zzm zzmVar = this.zzbn;
        if (zzmVar != null) {
            zzmVar.quit();
        }
        for (zzx zzxVar : this.zzbm) {
            if (zzxVar != null) {
                zzxVar.quit();
            }
        }
        zzm zzmVar2 = new zzm(this.zzbk, this.zzbl, this.zzn, this.zzo);
        this.zzbn = zzmVar2;
        zzmVar2.start();
        for (int i = 0; i < this.zzbm.length; i++) {
            zzx zzxVar2 = new zzx(this.zzbl, this.zzai, this.zzn, this.zzo);
            this.zzbm[i] = zzxVar2;
            zzxVar2.start();
        }
    }

    public final void zzb(zzab<?> zzabVar, int i) {
        synchronized (this.zzbp) {
            for (zzae zzaeVar : this.zzbp) {
                zzaeVar.zza(zzabVar, i);
            }
        }
    }

    public final <T> zzab<T> zzd(zzab<T> zzabVar) {
        zzabVar.zza(this);
        synchronized (this.zzbj) {
            this.zzbj.add(zzabVar);
        }
        zzabVar.zze(this.zzbi.incrementAndGet());
        zzabVar.zzc("add-to-queue");
        zzb(zzabVar, 0);
        (!zzabVar.zzh() ? this.zzbl : this.zzbk).add(zzabVar);
        return zzabVar;
    }

    public final <T> void zze(zzab<T> zzabVar) {
        synchronized (this.zzbj) {
            this.zzbj.remove(zzabVar);
        }
        synchronized (this.zzbo) {
            for (zzah zzahVar : this.zzbo) {
                zzahVar.zzf(zzabVar);
            }
        }
        zzb(zzabVar, 5);
    }
}
