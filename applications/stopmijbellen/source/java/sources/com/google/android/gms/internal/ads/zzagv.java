package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagv.class */
public final class zzagv {
    private final zzagc zze;
    private final zzagl zzf;
    private zzage zzh;
    private final zzagj zzk;
    private final AtomicInteger zza = new AtomicInteger();
    private final Set<zzags<?>> zzb = new HashSet();
    private final PriorityBlockingQueue<zzags<?>> zzc = new PriorityBlockingQueue<>();
    private final PriorityBlockingQueue<zzags<?>> zzd = new PriorityBlockingQueue<>();
    private final List<zzagu> zzi = new ArrayList();
    private final List<zzagt> zzj = new ArrayList();
    private final zzagm[] zzg = new zzagm[4];

    public zzagv(zzagc zzagcVar, zzagl zzaglVar, int i) {
        zzagj zzagjVar = new zzagj(new Handler(Looper.getMainLooper()));
        this.zze = zzagcVar;
        this.zzf = zzaglVar;
        this.zzk = zzagjVar;
    }

    public final <T> zzags<T> zza(zzags<T> zzagsVar) {
        zzagsVar.zzf(this);
        synchronized (this.zzb) {
            this.zzb.add(zzagsVar);
        }
        zzagsVar.zzg(this.zza.incrementAndGet());
        zzagsVar.zzm("add-to-queue");
        zzc(zzagsVar, 0);
        this.zzc.add(zzagsVar);
        return zzagsVar;
    }

    public final <T> void zzb(zzags<T> zzagsVar) {
        synchronized (this.zzb) {
            this.zzb.remove(zzagsVar);
        }
        synchronized (this.zzi) {
            for (zzagu zzaguVar : this.zzi) {
                zzaguVar.zza();
            }
        }
        zzc(zzagsVar, 5);
    }

    public final void zzc(zzags<?> zzagsVar, int i) {
        synchronized (this.zzj) {
            for (zzagt zzagtVar : this.zzj) {
                zzagtVar.zza();
            }
        }
    }

    public final void zzd() {
        zzage zzageVar = this.zzh;
        if (zzageVar != null) {
            zzageVar.zzb();
        }
        zzagm[] zzagmVarArr = this.zzg;
        for (int i = 0; i < 4; i++) {
            zzagm zzagmVar = zzagmVarArr[i];
            if (zzagmVar != null) {
                zzagmVar.zza();
            }
        }
        zzage zzageVar2 = new zzage(this.zzc, this.zzd, this.zze, this.zzk, null);
        this.zzh = zzageVar2;
        zzageVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzagm zzagmVar2 = new zzagm(this.zzd, this.zzf, this.zze, this.zzk, null);
            this.zzg[i2] = zzagmVar2;
            zzagmVar2.start();
        }
    }
}
