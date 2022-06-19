package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglq.class */
final class zzglq {
    public static final int zza(int i, Object obj, Object obj2) {
        zzglp zzglpVar = (zzglp) obj;
        zzglo zzgloVar = (zzglo) obj2;
        if (zzglpVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzglpVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final boolean zzb(Object obj) {
        return !((zzglp) obj).zze();
    }

    public static final Object zzc(Object obj, Object obj2) {
        zzglp zzglpVar = (zzglp) obj;
        zzglp zzglpVar2 = (zzglp) obj2;
        zzglp zzglpVar3 = zzglpVar;
        if (!zzglpVar2.isEmpty()) {
            zzglpVar3 = zzglpVar;
            if (!zzglpVar.zze()) {
                zzglpVar3 = zzglpVar.zzb();
            }
            zzglpVar3.zzd(zzglpVar2);
        }
        return zzglpVar3;
    }
}
