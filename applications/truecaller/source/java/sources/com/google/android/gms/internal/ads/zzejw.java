package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejw.class */
public final class zzejw implements zzf {
    public final /* synthetic */ zzdjj zza;

    public zzejw(zzejx zzejxVar, zzdjj zzdjjVar) {
        this.zza = zzdjjVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        this.zza.zzc().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
        this.zza.zzd().zza();
        this.zza.zze().zza();
    }
}
