package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddj.class */
public final class zzddj implements zzdhm {
    private final Context zza;
    private final zzfef zzb;
    private final zzcjf zzc;
    private final zzg zzd;
    private final zzebb zze;

    public zzddj(Context context, zzfef zzfefVar, zzcjf zzcjfVar, zzg zzgVar, zzebb zzebbVar) {
        this.zza = context;
        this.zzb = zzfefVar;
        this.zzc = zzcjfVar;
        this.zzd = zzgVar;
        this.zze = zzebbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcA)).booleanValue()) {
            zzt.zza().zzc(this.zza, this.zzc, this.zzb.zzf, this.zzd.zzg());
        }
        this.zze.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
    }
}
