package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecx.class */
public final class zzecx implements zzfet {
    private final zzecu zza;

    public zzecx(zzecu zzecuVar) {
        this.zza = zzecuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbE(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbF(zzfem zzfemVar, String str) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() || zzfem.RENDERER != zzfemVar) {
            return;
        }
        this.zza.zze(zzt.zzj().mo38789a());
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzc(zzfem zzfemVar, String str, Throwable th) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() || zzfem.RENDERER != zzfemVar || this.zza.zzf() == 0) {
            return;
        }
        this.zza.zzg(zzt.zzj().mo38789a() - this.zza.zzf());
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzd(zzfem zzfemVar, String str) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() || zzfem.RENDERER != zzfemVar || this.zza.zzf() == 0) {
            return;
        }
        this.zza.zzg(zzt.zzj().mo38789a() - this.zza.zzf());
    }
}
