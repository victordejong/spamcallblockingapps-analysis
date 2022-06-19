package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
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
        this.zzb = zzgVar.zzc();
        zzj zzjVar = new zzj();
        this.zzd = zzjVar;
        zzgVar.zze("require", new zzv(zzjVar));
        zzjVar.zza("internal.platform", zze.zza);
        zzgVar.zze("runtime.counter", new zzah(Double.valueOf(0.0d)));
    }

    public final zzap zza(zzg zzgVar, zzgt... zzgtVarArr) {
        zzap zzapVar = zzap.zzf;
        for (zzgt zzgtVar : zzgtVarArr) {
            zzap zzb = zzi.zzb(zzgtVar);
            zzh.zzk(this.zzc);
            if (!(zzb instanceof zzaq)) {
                zzapVar = zzb;
                if (!(zzb instanceof zzao)) {
                }
            }
            zzapVar = this.zza.zzb(zzgVar, zzb);
        }
        return zzapVar;
    }
}
