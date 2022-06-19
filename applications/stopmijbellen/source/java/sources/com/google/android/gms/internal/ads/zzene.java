package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzene.class */
final class zzene implements zzf {
    public final /* synthetic */ zzcjr zza;
    public final /* synthetic */ zzfdz zzb;
    public final /* synthetic */ zzfdn zzc;
    public final /* synthetic */ zzenk zzd;
    public final /* synthetic */ zzenf zze;

    public zzene(zzenf zzenfVar, zzcjr zzcjrVar, zzfdz zzfdzVar, zzfdn zzfdnVar, zzenk zzenkVar) {
        this.zze = zzenfVar;
        this.zza = zzcjrVar;
        this.zzb = zzfdzVar;
        this.zzc = zzfdnVar;
        this.zzd = zzenkVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
        zzeno zzenoVar;
        zzcjr zzcjrVar = this.zza;
        zzenoVar = this.zze.zzd;
        zzcjrVar.zzd(zzenoVar.zza(this.zzb, this.zzc, view, this.zzd));
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
    }
}
