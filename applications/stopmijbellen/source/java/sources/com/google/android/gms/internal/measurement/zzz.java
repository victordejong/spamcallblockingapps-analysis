package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public final class zzz {
    public final TreeMap<Integer, zzao> zza = new TreeMap<>();
    public final TreeMap<Integer, zzao> zzb = new TreeMap<>();

    private static final int zzc(zzg zzgVar, zzao zzaoVar, zzap zzapVar) {
        zzap zza = zzaoVar.zza(zzgVar, Collections.singletonList(zzapVar));
        if (zza instanceof zzah) {
            return zzh.zzg(zza.zzd().doubleValue());
        }
        return -1;
    }

    public final void zza(String str, int i, zzao zzaoVar, String str2) {
        TreeMap<Integer, zzao> treeMap;
        if ("create".equals(str2)) {
            treeMap = this.zzb;
        } else if (!"edit".equals(str2)) {
            String valueOf = String.valueOf(str2);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unknown callback type: ".concat(valueOf) : new String("Unknown callback type: "));
        } else {
            treeMap = this.zza;
        }
        int i2 = i;
        if (treeMap.containsKey(Integer.valueOf(i))) {
            i2 = treeMap.lastKey().intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i2), zzaoVar);
    }

    public final void zzb(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        for (Integer num : this.zza.keySet()) {
            zzaa clone = zzabVar.zzc().clone();
            int zzc = zzc(zzgVar, this.zza.get(num), zzlVar);
            if (zzc == 2 || zzc == -1) {
                zzabVar.zzd(clone);
            }
        }
        for (Integer num2 : this.zzb.keySet()) {
            zzc(zzgVar, this.zzb.get(num2), zzlVar);
        }
    }
}
