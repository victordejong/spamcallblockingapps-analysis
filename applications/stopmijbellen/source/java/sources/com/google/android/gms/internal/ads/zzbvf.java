package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzce;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvf.class */
public final class zzbvf implements zzbrt<zzbvu> {
    public final /* synthetic */ zzbuo zza;
    public final /* synthetic */ zzce zzb;
    public final /* synthetic */ zzbvt zzc;

    public zzbvf(zzbvt zzbvtVar, zzalt zzaltVar, zzbuo zzbuoVar, zzce zzceVar) {
        this.zzc = zzbvtVar;
        this.zza = zzbuoVar;
        this.zzb = zzceVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzbrt, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzbvu zzbvuVar, Map map) {
        Object obj;
        int i;
        obj = this.zzc.zza;
        synchronized (obj) {
            zzciz.zzi("JS Engine is requesting an update");
            i = this.zzc.zzh;
            if (i == 0) {
                zzciz.zzi("Starting reload.");
                this.zzc.zzh = 2;
                this.zzc.zzd(null);
            }
            this.zza.zzr("/requestReload", this.zzb.zza());
        }
    }
}
