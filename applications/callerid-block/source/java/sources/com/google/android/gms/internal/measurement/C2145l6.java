package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.l6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/l6.class */
final class C2145l6 {
    /* renamed from: a */
    public static final int m4266a(int i, Object obj, Object obj2) {
        zziq zziqVar = (zziq) obj;
        C2140k6 c2140k6 = (C2140k6) obj2;
        if (zziqVar.isEmpty()) {
            return 0;
        }
        Iterator it = zziqVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    /* renamed from: b */
    public static final Object m4265b(Object obj, Object obj2) {
        zziq zziqVar = (zziq) obj;
        zziq zziqVar2 = (zziq) obj2;
        zziq zziqVar3 = zziqVar;
        if (!zziqVar2.isEmpty()) {
            zziqVar3 = zziqVar;
            if (!zziqVar.zze()) {
                zziqVar3 = zziqVar.zzc();
            }
            zziqVar3.zzb(zziqVar2);
        }
        return zziqVar3;
    }
}
