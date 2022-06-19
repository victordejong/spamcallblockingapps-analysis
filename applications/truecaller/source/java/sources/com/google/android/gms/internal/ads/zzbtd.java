package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtd.class */
public final class zzbtd implements zzbpr<zzbtt> {
    public final /* synthetic */ zzbtr zza;
    public final /* synthetic */ zzbsn zzb;
    public final /* synthetic */ zzbts zzc;

    public zzbtd(zzbts zzbtsVar, zzbtr zzbtrVar, zzbsn zzbsnVar) {
        this.zzc = zzbtsVar;
        this.zza = zzbtrVar;
        this.zzb = zzbsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzbtt zzbttVar, Map map) {
        Object obj;
        obj = this.zzc.zza;
        synchronized (obj) {
            if (this.zza.zzi() != -1 && this.zza.zzi() != 1) {
                this.zzc.zzh = 0;
                zzbsn zzbsnVar = this.zzb;
                zzbsnVar.zzl("/log", zzbpq.zzg);
                zzbsnVar.zzl("/result", zzbpq.zzo);
                this.zza.zzg(this.zzb);
                this.zzc.zzg = this.zza;
                zze.zza("Successfully loaded JS Engine.");
            }
        }
    }
}
