package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgb.class */
public final class zzcgb extends zzb {
    public final /* synthetic */ zzcge zza;

    public zzcgb(zzcge zzcgeVar) {
        this.zza = zzcgeVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        zzcgz zzcgzVar;
        Object obj;
        zzbjq zzbjqVar;
        context = this.zza.zze;
        zzcgzVar = this.zza.zzf;
        zzbjo zzbjoVar = new zzbjo(context, zzcgzVar.zza);
        obj = this.zza.zza;
        synchronized (obj) {
            try {
                zzt.zzl();
                zzbjqVar = this.zza.zzg;
                zzbjr.zza(zzbjqVar, zzbjoVar);
            } catch (IllegalArgumentException e) {
                zzcgt.zzj("Cannot config CSI reporter.", e);
            }
        }
    }
}
