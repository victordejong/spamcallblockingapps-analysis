package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasr.class */
final class zzasr {
    public final zzata zza = new zzata();
    public final zzars zzb;
    public zzasy zzc;
    public zzaso zzd;
    public int zze;
    public int zzf;
    public int zzg;
    public zzarr zzh;
    public zzasz zzi;

    public zzasr(zzars zzarsVar) {
        this.zzb = zzarsVar;
    }

    public final void zza(zzasy zzasyVar, zzaso zzasoVar) {
        Objects.requireNonNull(zzasyVar);
        this.zzc = zzasyVar;
        Objects.requireNonNull(zzasoVar);
        this.zzd = zzasoVar;
        this.zzb.zza(zzasyVar.zzf);
        zzb();
    }

    public final void zzb() {
        zzata zzataVar = this.zza;
        zzataVar.zzd = 0;
        zzataVar.zzr = 0L;
        zzataVar.zzl = false;
        zzataVar.zzq = false;
        zzataVar.zzn = null;
        this.zze = 0;
        this.zzg = 0;
        this.zzf = 0;
        this.zzh = null;
        this.zzi = null;
    }
}
