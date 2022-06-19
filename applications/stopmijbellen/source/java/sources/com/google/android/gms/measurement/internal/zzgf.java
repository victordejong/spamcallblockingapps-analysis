package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgf.class */
final class zzgf implements Runnable {
    public final /* synthetic */ zzas zza;
    public final /* synthetic */ zzp zzb;
    public final /* synthetic */ zzgm zzc;

    public zzgf(zzgm zzgmVar, zzas zzasVar, zzp zzpVar) {
        this.zzc = zzgmVar;
        this.zza = zzasVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzas zzc = this.zzc.zzc(this.zza, this.zzb);
        zzpt.zzb();
        zzknVar = this.zzc.zza;
        if (zzknVar.zzd().zzn(null, zzea.zzaD)) {
            this.zzc.zzb(zzc, this.zzb);
        } else {
            this.zzc.zzz(zzc, this.zzb);
        }
    }
}
