package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzcd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbte.class */
public final class zzbte implements zzbpr<zzbtt> {
    public final /* synthetic */ zzbsn zza;
    public final /* synthetic */ zzcd zzb;
    public final /* synthetic */ zzbts zzc;

    public zzbte(zzbts zzbtsVar, zzaas zzaasVar, zzbsn zzbsnVar, zzcd zzcdVar) {
        this.zzc = zzbtsVar;
        this.zza = zzbsnVar;
        this.zzb = zzcdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzbpr, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzbtt zzbttVar, Map map) {
        Object obj;
        int i;
        obj = this.zzc.zza;
        synchronized (obj) {
            zzcgt.zzh("JS Engine is requesting an update");
            i = this.zzc.zzh;
            if (i == 0) {
                zzcgt.zzh("Starting reload.");
                this.zzc.zzh = 2;
                this.zzc.zzf(null);
            }
            this.zza.zzm("/requestReload", this.zzb.zza());
        }
    }
}
