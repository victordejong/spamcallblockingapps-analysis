package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejn.class */
public final class zzejn implements zzf {
    public final /* synthetic */ zzchl zza;
    public final /* synthetic */ zzfal zzb;
    public final /* synthetic */ zzezz zzc;
    public final /* synthetic */ zzejt zzd;
    public final /* synthetic */ zzejo zze;

    public zzejn(zzejo zzejoVar, zzchl zzchlVar, zzfal zzfalVar, zzezz zzezzVar, zzejt zzejtVar) {
        this.zze = zzejoVar;
        this.zza = zzchlVar;
        this.zzb = zzfalVar;
        this.zzc = zzezzVar;
        this.zzd = zzejtVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        zzejx zzejxVar;
        zzchl zzchlVar = this.zza;
        zzejxVar = this.zze.zzd;
        zzchlVar.zzc(zzejxVar.zza(this.zzb, this.zzc, view, this.zzd));
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
    }
}
