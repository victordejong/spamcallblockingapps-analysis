package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzk.class */
public final class zzk extends zzai {
    private final zzab zza;

    public zzk(zzab zzabVar) {
        super("internal.eventLogger");
        this.zza = zzabVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzh.zza(this.zzd, 3, list);
        String zzc = zzgVar.zza(list.get(0)).zzc();
        long zzi = (long) zzh.zzi(zzgVar.zza(list.get(1)).zzd().doubleValue());
        zzap zza = zzgVar.zza(list.get(2));
        HashMap hashMap = new HashMap();
        if (zza instanceof zzam) {
            zzam zzamVar = (zzam) zza;
            for (String str : zzamVar.zzb()) {
                Object zzj = zzh.zzj(zzamVar.zzk(str));
                if (zzj != null) {
                    hashMap.put(str, zzj);
                }
            }
        }
        this.zza.zze(zzc, zzi, hashMap);
        return zzap.zzf;
    }
}
