package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzld.class */
final class zzld {
    public static final int zza(int i, Object obj, Object obj2) {
        zzlc zzlcVar = (zzlc) obj;
        zzlb zzlbVar = (zzlb) obj2;
        if (zzlcVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzlcVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzlc zzlcVar = (zzlc) obj;
        zzlc zzlcVar2 = (zzlc) obj2;
        zzlc zzlcVar3 = zzlcVar;
        if (!zzlcVar2.isEmpty()) {
            zzlcVar3 = zzlcVar;
            if (!zzlcVar.zze()) {
                zzlcVar3 = zzlcVar.zzc();
            }
            zzlcVar3.zzb(zzlcVar2);
        }
        return zzlcVar3;
    }
}
