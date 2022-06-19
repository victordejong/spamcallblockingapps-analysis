package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzv.class */
public final class zzv extends zzai {
    public final Map<String, zzai> zza = new HashMap();
    private final zzj zzb;

    public zzv(zzj zzjVar) {
        super("require");
        this.zzb = zzjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzai zzaiVar;
        zzh.zza("require", 1, list);
        String zzc = zzgVar.zza(list.get(0)).zzc();
        if (this.zza.containsKey(zzc)) {
            return this.zza.get(zzc);
        }
        zzj zzjVar = this.zzb;
        if (zzjVar.zza.containsKey(zzc)) {
            try {
                zzaiVar = zzjVar.zza.get(zzc).call();
            } catch (Exception e) {
                String valueOf = String.valueOf(zzc);
                throw new IllegalStateException(valueOf.length() != 0 ? "Failed to create API implementation: ".concat(valueOf) : new String("Failed to create API implementation: "));
            }
        } else {
            zzaiVar = zzap.zzf;
        }
        if (zzaiVar instanceof zzai) {
            this.zza.put(zzc, (zzai) zzaiVar);
        }
        return zzaiVar;
    }
}
