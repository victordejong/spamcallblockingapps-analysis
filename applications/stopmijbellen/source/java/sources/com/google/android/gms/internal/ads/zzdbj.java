package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbj.class */
public final class zzdbj {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzfxa<zzdbc> zzc;
    private volatile boolean zzd = true;

    public zzdbj(Executor executor, ScheduledExecutorService scheduledExecutorService, zzfxa<zzdbc> zzfxaVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzfxaVar;
    }

    public static /* bridge */ /* synthetic */ void zzb(zzdbj zzdbjVar, List list, final zzfwm zzfwmVar) {
        if (list == null || list.isEmpty()) {
            zzdbjVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdbg
                @Override // java.lang.Runnable
                public final void run() {
                    zzfwm.this.zza(new zzecd(3));
                }
            });
            return;
        }
        zzfxa zzi = zzfwq.zzi(null);
        Iterator it2 = list.iterator();
        zzfxa zzfxaVar = zzi;
        while (true) {
            zzfxa zzfxaVar2 = zzfxaVar;
            if (!it2.hasNext()) {
                zzfwq.zzr(zzfxaVar2, new zzdbi(zzdbjVar, zzfwmVar), zzdbjVar.zza);
                return;
            } else {
                final zzfxa zzfxaVar3 = (zzfxa) it2.next();
                zzfxaVar = zzfwq.zzn(zzfwq.zzg(zzfxaVar2, Throwable.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdbe
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        zzfwm.this.zza((Throwable) obj);
                        return zzfwq.zzi(null);
                    }
                }, zzdbjVar.zza), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdbd
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        return zzdbj.this.zza(zzfwmVar, zzfxaVar3, (zzdav) obj);
                    }
                }, zzdbjVar.zza);
            }
        }
    }

    public final /* synthetic */ zzfxa zza(zzfwm zzfwmVar, zzfxa zzfxaVar, zzdav zzdavVar) throws Exception {
        if (zzdavVar != null) {
            zzfwmVar.zzb(zzdavVar);
        }
        return zzfwq.zzo(zzfxaVar, zzbni.zzb.zze().longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }

    public final /* synthetic */ void zzd() {
        this.zzd = false;
    }

    public final void zze(zzfwm<zzdav> zzfwmVar) {
        zzfwq.zzr(this.zzc, new zzdbh(this, zzfwmVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
