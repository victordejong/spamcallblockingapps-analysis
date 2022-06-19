package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public final class zzz {
    public final TreeMap zza = new TreeMap();
    public final TreeMap zzb = new TreeMap();

    private static final int zzc(zzg zzgVar, zzao zzaoVar, zzap zzapVar) {
        zzap zza = zzaoVar.zza(zzgVar, Collections.singletonList(zzapVar));
        if (zza instanceof zzah) {
            return zzh.zzb(zza.zzh().doubleValue());
        }
        return -1;
    }

    public final void zza(String str, int i, zzao zzaoVar, String str2) {
        TreeMap treeMap;
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
            i2 = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i2), zzaoVar);
    }

    public final void zzb(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        for (Integer num : this.zza.keySet()) {
            zzaa clone = zzabVar.zzb().clone();
            int zzc = zzc(zzgVar, (zzao) this.zza.get(num), zzlVar);
            if (zzc == 2 || zzc == -1) {
                zzabVar.zzf(clone);
            }
        }
        for (Integer num2 : this.zzb.keySet()) {
            zzc(zzgVar, (zzao) this.zzb.get(num2), zzlVar);
        }
    }
}
