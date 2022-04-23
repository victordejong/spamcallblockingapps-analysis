package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ld2.class */
final class ld2 {
    /* renamed from: a */
    public static final int m6702a(int i, Object obj, Object obj2) {
        zzeui zzeuiVar = (zzeui) obj;
        kd2 kd2Var = (kd2) obj2;
        if (zzeuiVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzeuiVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    /* renamed from: b */
    public static final boolean m6701b(Object obj) {
        return !((zzeui) obj).zze();
    }

    /* renamed from: c */
    public static final Object m6700c(Object obj, Object obj2) {
        zzeui zzeuiVar = (zzeui) obj;
        zzeui zzeuiVar2 = (zzeui) obj2;
        zzeui zzeuiVar3 = zzeuiVar;
        if (!zzeuiVar2.isEmpty()) {
            zzeuiVar3 = zzeuiVar;
            if (!zzeuiVar.zze()) {
                zzeuiVar3 = zzeuiVar.zzc();
            }
            zzeuiVar3.zzb(zzeuiVar2);
        }
        return zzeuiVar3;
    }
}
