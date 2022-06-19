package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxu.class */
public final class zzcxu {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzfsm<zzcxn> zzc;
    private volatile boolean zzd = true;

    public zzcxu(Executor executor, ScheduledExecutorService scheduledExecutorService, zzfsm<zzcxn> zzfsmVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzfsmVar;
    }

    public static /* synthetic */ void zzb(zzcxu zzcxuVar, List list, zzfrz zzfrzVar) {
        if (list == null || list.isEmpty()) {
            zzcxuVar.zza.execute(new Runnable(zzfrzVar) { // from class: com.google.android.gms.internal.ads.zzcxo
                private final zzfrz zza;

                {
                    this.zza = zzfrzVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(new zzdym(3));
                }
            });
            return;
        }
        zzfsm zza = zzfsd.zza(null);
        Iterator it = list.iterator();
        zzfsm zzfsmVar = zza;
        while (true) {
            zzfsm zzfsmVar2 = zzfsmVar;
            if (!it.hasNext()) {
                zzfsd.zzp(zzfsmVar2, new zzcxt(zzcxuVar, zzfrzVar), zzcxuVar.zza);
                return;
            } else {
                zzfsmVar = zzfsd.zzi(zzfsd.zzg(zzfsmVar2, Throwable.class, new zzfrk(zzfrzVar) { // from class: com.google.android.gms.internal.ads.zzcxp
                    private final zzfrz zza;

                    {
                        this.zza = zzfrzVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        this.zza.zza((Throwable) obj);
                        return zzfsd.zza(null);
                    }
                }, zzcxuVar.zza), new zzfrk(zzcxuVar, zzfrzVar, (zzfsm) it.next()) { // from class: com.google.android.gms.internal.ads.zzcxq
                    private final zzcxu zza;
                    private final zzfrz zzb;
                    private final zzfsm zzc;

                    {
                        this.zza = zzcxuVar;
                        this.zzb = zzfrzVar;
                        this.zzc = zzfsmVar3;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        return this.zza.zzf(this.zzb, this.zzc, (zzcxg) obj);
                    }
                }, zzcxuVar.zza);
            }
        }
    }

    public final void zza(zzfrz<zzcxg> zzfrzVar) {
        zzfsd.zzp(this.zzc, new zzcxs(this, zzfrzVar), this.zza);
    }

    public final boolean zzc() {
        return this.zzd;
    }

    public final /* synthetic */ void zze() {
        this.zzd = false;
    }

    public final /* synthetic */ zzfsm zzf(zzfrz zzfrzVar, zzfsm zzfsmVar, zzcxg zzcxgVar) throws Exception {
        if (zzcxgVar != null) {
            zzfrzVar.zzb(zzcxgVar);
        }
        return zzfsd.zzh(zzfsmVar, zzblj.zzb.zze().longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }
}
