package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzu.class */
public final class zzu extends zzai {
    private final zzz zza;

    public zzu(zzz zzzVar) {
        super("internal.registerCallback");
        this.zza = zzzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzh.zza(this.zzd, 3, list);
        String zzc = zzgVar.zza(list.get(0)).zzc();
        zzap zza = zzgVar.zza(list.get(1));
        if (zza instanceof zzao) {
            zzap zza2 = zzgVar.zza(list.get(2));
            if (!(zza2 instanceof zzam)) {
                throw new IllegalArgumentException("Invalid callback params");
            }
            zzam zzamVar = (zzam) zza2;
            if (!zzamVar.zzj("type")) {
                throw new IllegalArgumentException("Undefined rule type");
            }
            this.zza.zza(zzc, zzamVar.zzj("priority") ? zzh.zzg(zzamVar.zzk("priority").zzd().doubleValue()) : 1000, (zzao) zza, zzamVar.zzk("type").zzc());
            return zzap.zzf;
        }
        throw new IllegalArgumentException("Invalid callback type");
    }
}
