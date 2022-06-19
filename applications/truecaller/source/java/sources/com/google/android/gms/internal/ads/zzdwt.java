package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public final class zzdwt implements zzdwh {
    private final long zza;
    private final zzelq zzb;

    public zzdwt(long j, Context context, zzdwm zzdwmVar, zzcoj zzcojVar, String str) {
        this.zza = j;
        zzeye zzq = zzcojVar.zzq();
        zzq.zzd(context);
        zzq.zzb(new zzbdl());
        zzq.zzc(str);
        zzelq zza = zzq.zza().zza();
        this.zzb = zza;
        zza.zzo(new zzdws(this, zzdwmVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdwh
    public final void zza(zzbdg zzbdgVar) {
        this.zzb.zzl(zzbdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwh
    public final void zzb() {
        this.zzb.zzZ(new ObjectWrapper(null));
    }

    @Override // com.google.android.gms.internal.ads.zzdwh
    public final void zzc() {
        this.zzb.zzj();
    }
}
