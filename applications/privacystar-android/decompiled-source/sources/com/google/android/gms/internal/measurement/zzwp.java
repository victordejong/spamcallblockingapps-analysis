package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwp.class */
final class zzwp implements zzwo {
    @Override // com.google.android.gms.internal.measurement.zzwo
    public final boolean zzaa(Object obj) {
        return !((zzwn) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final Object zzab(Object obj) {
        ((zzwn) obj).zzsm();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final Object zzac(Object obj) {
        return zzwn.zzxa().zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final zzwm<?, ?> zzad(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final int zzb(int i, Object obj, Object obj2) {
        zzwn zzwnVar = (zzwn) obj;
        if (zzwnVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzwnVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final Object zzc(Object obj, Object obj2) {
        zzwn zzwnVar = (zzwn) obj;
        zzwn zzwnVar2 = (zzwn) obj2;
        zzwn zzwnVar3 = zzwnVar;
        if (!zzwnVar2.isEmpty()) {
            zzwnVar3 = zzwnVar;
            if (!zzwnVar.isMutable()) {
                zzwnVar3 = zzwnVar.zzxb();
            }
            zzwnVar3.zza(zzwnVar2);
        }
        return zzwnVar3;
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final Map<?, ?> zzy(Object obj) {
        return (zzwn) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    public final Map<?, ?> zzz(Object obj) {
        return (zzwn) obj;
    }
}
