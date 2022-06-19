package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzis.class */
final class zzis {
    public static final int zza(int i, Object obj, Object obj2) {
        zzir zzirVar = (zzir) obj;
        zziq zziqVar = (zziq) obj2;
        if (zzirVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzirVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzir zzirVar = (zzir) obj;
        zzir zzirVar2 = (zzir) obj2;
        zzir zzirVar3 = zzirVar;
        if (!zzirVar2.isEmpty()) {
            zzirVar3 = zzirVar;
            if (!zzirVar.zze()) {
                zzirVar3 = zzirVar.zzc();
            }
            zzirVar3.zzb(zzirVar2);
        }
        return zzirVar3;
    }
}
