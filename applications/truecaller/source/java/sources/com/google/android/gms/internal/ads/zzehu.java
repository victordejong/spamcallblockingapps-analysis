package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehu.class */
public final class zzehu<AdT> implements zzfrk<zzfal, AdT> {
    private final zzfes zza;
    private final zzdbe zzb;
    private final zzffr zzc;
    private final zzffu zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzcxj<AdT> zzg;
    private final zzehp zzh;
    private final zzeeh zzi;

    public zzehu(zzfes zzfesVar, zzehp zzehpVar, zzdbe zzdbeVar, zzffr zzffrVar, zzffu zzffuVar, zzcxj<AdT> zzcxjVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzeeh zzeehVar) {
        this.zza = zzfesVar;
        this.zzh = zzehpVar;
        this.zzb = zzdbeVar;
        this.zzc = zzffrVar;
        this.zzd = zzffuVar;
        this.zzg = zzcxjVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzeehVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bd  */
    @Override // com.google.android.gms.internal.ads.zzfrk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzfsm zza(com.google.android.gms.internal.ads.zzfal r10) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehu.zza(java.lang.Object):com.google.android.gms.internal.ads.zzfsm");
    }

    public final /* synthetic */ zzfsm zzb(zzfal zzfalVar, zzezz zzezzVar, zzeec zzeecVar, Throwable th) throws Exception {
        zzehp zzehpVar = this.zzh;
        zzfac zzfacVar = zzfalVar.zzb.zzb;
        zzfsm zzh = zzfsd.zzh(zzeecVar.zzb(zzfalVar, zzezzVar), zzezzVar.zzN, TimeUnit.MILLISECONDS, this.zzf);
        zzehpVar.zze(zzfacVar, zzezzVar, zzh);
        return zzh;
    }
}
