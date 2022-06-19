package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeak.class */
public final class zzeak implements zzdzy {
    private final long zza;
    private final zzepf zzb;

    public zzeak(long j, Context context, zzead zzeadVar, zzcqm zzcqmVar, String str) {
        this.zza = j;
        zzfbs zzw = zzcqmVar.zzw();
        zzw.zzc(context);
        zzw.zza(new zzbfi());
        zzw.zzb(str);
        zzepf zza = zzw.zzd().zza();
        this.zzb = zza;
        zza.zzD(new zzeaj(this, zzeadVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zza() {
        this.zzb.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zzb(zzbfd zzbfdVar) {
        this.zzb.zzaa(zzbfdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdzy
    public final void zzc() {
        this.zzb.zzW(ObjectWrapper.wrap(null));
    }
}
