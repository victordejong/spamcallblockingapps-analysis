package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeer.class */
public final class zzeer implements zzdkn {
    private final zzcgz zza;
    private final zzfsm<zzcus> zzb;
    private final zzezz zzc;
    private final zzcml zzd;
    private final zzfar zze;
    private final zzbpu zzf;
    private final boolean zzg;

    public zzeer(zzcgz zzcgzVar, zzfsm<zzcus> zzfsmVar, zzezz zzezzVar, zzcml zzcmlVar, zzfar zzfarVar, boolean z, zzbpu zzbpuVar) {
        this.zza = zzcgzVar;
        this.zzb = zzfsmVar;
        this.zzc = zzezzVar;
        this.zzd = zzcmlVar;
        this.zze = zzfarVar;
        this.zzg = z;
        this.zzf = zzbpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final void zza(boolean z, Context context, zzdbp zzdbpVar) {
        zzcus zzcusVar = (zzcus) zzfsd.zzr(this.zzb);
        this.zzd.zzag(true);
        zzj zzjVar = new zzj(this.zzg ? this.zzf.zzc(true) : true, true, this.zzg ? this.zzf.zzd() : false, this.zzg ? this.zzf.zze() : 0.0f, -1, z, this.zzc.zzK, false);
        if (zzdbpVar != null) {
            zzdbpVar.zze();
        }
        zzt.zzb();
        zzdkc zzj = zzcusVar.zzj();
        zzcml zzcmlVar = this.zzd;
        int i = this.zzc.zzM;
        if (i == -1) {
            zzbdr zzbdrVar = this.zze.zzj;
            if (zzbdrVar != null) {
                int i2 = zzbdrVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            zzcgt.zzd("Error setting app open orientation; no targeting orientation available.");
            i = this.zzc.zzM;
        }
        zzcgz zzcgzVar = this.zza;
        zzezz zzezzVar = this.zzc;
        String str = zzezzVar.zzB;
        zzfae zzfaeVar = zzezzVar.zzs;
        zzm.zza(context, new AdOverlayInfoParcel((zzbcv) null, zzj, (zzv) null, zzcmlVar, i, zzcgzVar, str, zzjVar, zzfaeVar.zzb, zzfaeVar.zza, this.zze.zzf, zzdbpVar), true);
    }
}
