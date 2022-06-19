package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx.class */
public final class zzkx {
    public static final int zza(int i, Object obj, Object obj2) {
        zzkw zzkwVar = (zzkw) obj;
        zzkv zzkvVar = (zzkv) obj2;
        if (zzkwVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzkwVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzkw zzkwVar = (zzkw) obj;
        zzkw zzkwVar2 = (zzkw) obj2;
        zzkw zzkwVar3 = zzkwVar;
        if (!zzkwVar2.isEmpty()) {
            zzkwVar3 = zzkwVar;
            if (!zzkwVar.zze()) {
                zzkwVar3 = zzkwVar.zzb();
            }
            zzkwVar3.zzd(zzkwVar2);
        }
        return zzkwVar3;
    }
}
