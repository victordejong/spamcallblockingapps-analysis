package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbve.class */
public final class zzbve implements zzbrt<zzbvu> {
    public final /* synthetic */ zzbvs zza;
    public final /* synthetic */ zzbuo zzb;
    public final /* synthetic */ zzbvt zzc;

    public zzbve(zzbvt zzbvtVar, zzbvs zzbvsVar, zzbuo zzbuoVar) {
        this.zzc = zzbvtVar;
        this.zza = zzbvsVar;
        this.zzb = zzbuoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzbvu zzbvuVar, Map map) {
        Object obj;
        obj = this.zzc.zza;
        synchronized (obj) {
            if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                this.zzc.zzh = 0;
                zzbuo zzbuoVar = this.zzb;
                zzbuoVar.zzq("/log", zzbrs.zzg);
                zzbuoVar.zzq("/result", zzbrs.zzo);
                this.zza.zzh(this.zzb);
                this.zzc.zzg = this.zza;
                zze.zza("Successfully loaded JS Engine.");
            }
        }
    }
}
