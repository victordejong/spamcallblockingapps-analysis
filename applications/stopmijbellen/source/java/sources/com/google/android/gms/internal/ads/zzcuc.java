package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzg;
import com.google.android.gms.ads.nonagon.signalgeneration.zzz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuc.class */
final class zzcuc implements zzf {
    private final zzcui zza;
    private zzded zzb;
    private zzz zzc;

    public /* synthetic */ zzcuc(zzcui zzcuiVar, zzcub zzcubVar) {
        this.zza = zzcuiVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final /* synthetic */ zzf zza(zzded zzdedVar) {
        this.zzb = zzdedVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final /* synthetic */ zzf zzb(zzz zzzVar) {
        this.zzc = zzzVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzf
    public final zzg zzc() {
        zzgpz.zzc(this.zzb, zzded.class);
        zzgpz.zzc(this.zzc, zzz.class);
        return new zzcue(this.zza, this.zzc, new zzdca(), new zzdzm(), this.zzb, new zzfff(), null, null, null);
    }
}
