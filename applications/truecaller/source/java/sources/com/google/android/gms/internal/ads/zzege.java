package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzege.class */
public final class zzege implements zzdkn {
    private final Context zza;
    private final zzcgz zzb;
    private final zzfsm<zzdjj> zzc;
    private final zzezz zzd;
    private final zzcml zze;
    private final zzfar zzf;
    private final zzbpu zzg;
    private final boolean zzh;

    public zzege(Context context, zzcgz zzcgzVar, zzfsm<zzdjj> zzfsmVar, zzezz zzezzVar, zzcml zzcmlVar, zzfar zzfarVar, boolean z, zzbpu zzbpuVar) {
        this.zza = context;
        this.zzb = zzcgzVar;
        this.zzc = zzfsmVar;
        this.zzd = zzezzVar;
        this.zze = zzcmlVar;
        this.zzf = zzfarVar;
        this.zzg = zzbpuVar;
        this.zzh = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final void zza(boolean z, Context context, zzdbp zzdbpVar) {
        zzdjj zzdjjVar = (zzdjj) zzfsd.zzr(this.zzc);
        this.zze.zzag(true);
        boolean zzc = this.zzh ? this.zzg.zzc(false) : false;
        zzt.zzc();
        zzj zzjVar = new zzj(zzc, zzs.zzL(this.zza), this.zzh ? this.zzg.zzd() : false, this.zzh ? this.zzg.zze() : 0.0f, -1, z, this.zzd.zzK, false);
        if (zzdbpVar != null) {
            zzdbpVar.zze();
        }
        zzt.zzb();
        zzdkc zzj = zzdjjVar.zzj();
        zzcml zzcmlVar = this.zze;
        zzezz zzezzVar = this.zzd;
        int i = zzezzVar.zzM;
        zzcgz zzcgzVar = this.zzb;
        String str = zzezzVar.zzB;
        zzfae zzfaeVar = zzezzVar.zzs;
        zzm.zza(context, new AdOverlayInfoParcel((zzbcv) null, zzj, (zzv) null, zzcmlVar, i, zzcgzVar, str, zzjVar, zzfaeVar.zzb, zzfaeVar.zza, this.zzf.zzf, zzdbpVar), true);
    }
}
