package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzell.class */
public final class zzell<AdT> implements zzfvx<zzfdz, AdT> {
    private final zzfie zza;
    private final zzdet zzb;
    private final zzfjp zzc;
    private final zzfjs zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzday<AdT> zzg;
    private final zzelg zzh;
    private final zzehy zzi;

    public zzell(zzfie zzfieVar, zzelg zzelgVar, zzdet zzdetVar, zzfjp zzfjpVar, zzfjs zzfjsVar, zzday<AdT> zzdayVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzehy zzehyVar) {
        this.zza = zzfieVar;
        this.zzh = zzelgVar;
        this.zzb = zzdetVar;
        this.zzc = zzfjpVar;
        this.zzd = zzfjsVar;
        this.zzg = zzdayVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzehyVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bd  */
    @Override // com.google.android.gms.internal.ads.zzfvx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzfxa zza(com.google.android.gms.internal.ads.zzfdz r10) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzell.zza(java.lang.Object):com.google.android.gms.internal.ads.zzfxa");
    }

    public final /* synthetic */ zzfxa zzb(zzfdz zzfdzVar, zzfdn zzfdnVar, zzeht zzehtVar, Throwable th) throws Exception {
        zzelg zzelgVar = this.zzh;
        zzfxa zzo = zzfwq.zzo(zzehtVar.zza(zzfdzVar, zzfdnVar), zzfdnVar.zzO, TimeUnit.MILLISECONDS, this.zzf);
        zzelgVar.zze(zzfdzVar, zzfdnVar, zzo, this.zzc);
        return zzo;
    }
}
