package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
public final class zzf {
    public final zzax zza;
    public final zzg zzb;
    public final zzg zzc;
    public final zzj zzd;

    public zzf() {
        zzax zzaxVar = new zzax();
        this.zza = zzaxVar;
        zzg zzgVar = new zzg(null, zzaxVar);
        this.zzc = zzgVar;
        this.zzb = zzgVar.zza();
        zzj zzjVar = new zzj();
        this.zzd = zzjVar;
        zzgVar.zzg("require", new zzw(zzjVar));
        zzjVar.zza("internal.platform", zze.zza);
        zzgVar.zzg("runtime.counter", new zzah(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)));
    }

    public final zzap zza(zzg zzgVar, zzgt... zzgtVarArr) {
        zzap zzapVar = zzap.zzf;
        for (zzgt zzgtVar : zzgtVarArr) {
            zzap zza = zzi.zza(zzgtVar);
            zzh.zzc(this.zzc);
            if (!(zza instanceof zzaq)) {
                zzapVar = zza;
                if (!(zza instanceof zzao)) {
                }
            }
            zzapVar = this.zza.zza(zzgVar, zza);
        }
        return zzapVar;
    }
}
