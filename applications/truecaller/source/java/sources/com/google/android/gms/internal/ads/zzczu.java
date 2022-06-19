package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczu.class */
public final class zzczu implements zzddx {
    private final Context zza;
    private final zzfar zzb;
    private final zzcgz zzc;
    private final zzg zzd;
    private final zzdxk zze;

    public zzczu(Context context, zzfar zzfarVar, zzcgz zzcgzVar, zzg zzgVar, zzdxk zzdxkVar) {
        this.zza = context;
        this.zzb = zzfarVar;
        this.zzc = zzcgzVar;
        this.zzd = zzgVar;
        this.zze = zzdxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzct)).booleanValue()) {
            zzt.zzk().zzb(this.zza, this.zzc, this.zzb.zzf, this.zzd.zzn());
        }
        this.zze.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
    }
}
