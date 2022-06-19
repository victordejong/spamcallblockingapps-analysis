package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcny.class */
public final class zzcny implements zzcnz {
    private final zzdzv zzghl;
    private final Map<String, zzeqo<zzcnz>> zzgpd;
    private final zzbtz zzgpe;

    public zzcny(Map<String, zzeqo<zzcnz>> map, zzdzv zzdzvVar, zzbtz zzbtzVar) {
        this.zzgpd = map;
        this.zzghl = zzdzvVar;
        this.zzgpe = zzbtzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcnz
    public final zzdzw<zzdnl> zzh(zzatq zzatqVar) {
        this.zzgpe.zzd(zzatqVar);
        zzdzw<zzdnl> immediateFailedFuture = zzdzk.immediateFailedFuture(new zzcmb(zzdom.NO_FILL));
        String[] split = ((String) zzwr.zzqr().zzd(zzabp.zzczv)).split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            zzeqo<zzcnz> zzeqoVar = this.zzgpd.get(split[i].trim());
            zzdzw<zzdnl> zzdzwVar = immediateFailedFuture;
            if (zzeqoVar != null) {
                zzdzwVar = zzdzk.zzb(immediateFailedFuture, zzcmb.class, new zzdyu(zzeqoVar, zzatqVar) { // from class: com.google.android.gms.internal.ads.zzcnx
                    private final zzatq zzgnq;
                    private final zzeqo zzgpc;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzgpc = zzeqoVar;
                        this.zzgnq = zzatqVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdyu
                    public final zzdzw zzf(Object obj) {
                        zzeqo zzeqoVar2 = this.zzgpc;
                        zzcmb zzcmbVar = (zzcmb) obj;
                        return ((zzcnz) zzeqoVar2.get()).zzh(this.zzgnq);
                    }
                }, this.zzghl);
            }
            i++;
            immediateFailedFuture = zzdzwVar;
        }
        zzdzk.zza(immediateFailedFuture, new zzcoa(this), zzazp.zzeih);
        return immediateFailedFuture;
    }
}
