package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzax.class */
public final class zzax {
    public final Map<String, zzaw> zza = new HashMap();
    public final zzbj zzb = new zzbj();

    public zzax() {
        zza(new zzav());
        zza(new zzay());
        zza(new zzaz());
        zza(new zzbc());
        zza(new zzbh());
        zza(new zzbi());
        zza(new zzbk());
    }

    public final void zza(zzaw zzawVar) {
        for (zzbl zzblVar : zzawVar.zza) {
            this.zza.put(zzblVar.zzb().toString(), zzawVar);
        }
    }

    public final zzap zzb(zzg zzgVar, zzap zzapVar) {
        zzh.zzk(zzgVar);
        if (zzapVar instanceof zzaq) {
            zzaq zzaqVar = (zzaq) zzapVar;
            ArrayList<zzap> zzg = zzaqVar.zzg();
            String zzb = zzaqVar.zzb();
            return (this.zza.containsKey(zzb) ? this.zza.get(zzb) : this.zzb).zza(zzb, zzgVar, zzg);
        }
        return zzapVar;
    }
}
