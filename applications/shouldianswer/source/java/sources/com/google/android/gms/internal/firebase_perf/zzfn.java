package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfn.class */
final class zzfn implements zzfk {
    public final int zzc(int i, Object obj, Object obj2) {
        zzfl zzflVar = (zzfl) obj;
        zzfj zzfjVar = (zzfj) obj2;
        int i2 = 0;
        if (zzflVar.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : zzflVar.entrySet()) {
            i2 += zzfjVar.zzb(i, entry.getKey(), entry.getValue());
        }
        return i2;
    }

    public final Object zzd(Object obj, Object obj2) {
        zzfl zzflVar = (zzfl) obj;
        zzfl zzflVar2 = (zzfl) obj2;
        zzfl zzflVar3 = zzflVar;
        if (!zzflVar2.isEmpty()) {
            zzflVar3 = zzflVar;
            if (!zzflVar.isMutable()) {
                zzflVar3 = zzflVar.zzhf();
            }
            zzflVar3.zza(zzflVar2);
        }
        return zzflVar3;
    }

    public final Map<?, ?> zzg(Object obj) {
        return (zzfl) obj;
    }

    public final Object zzh(Object obj) {
        ((zzfl) obj).zzfk();
        return obj;
    }

    public final zzfi<?, ?> zzi(Object obj) {
        return ((zzfj) obj).zzhd();
    }
}
