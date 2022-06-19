package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgx.class */
public final class zzgx implements zzgu {
    @Override // com.google.android.gms.internal.mlkit_common.zzgu
    public final int zza(int i, Object obj, Object obj2) {
        zzgv zzgvVar = (zzgv) obj;
        zzgt zzgtVar = (zzgt) obj2;
        if (zzgvVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzgvVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgu
    public final Object zza(Object obj, Object obj2) {
        zzgv zzgvVar = (zzgv) obj;
        zzgv zzgvVar2 = (zzgv) obj2;
        zzgv zzgvVar3 = zzgvVar;
        if (!zzgvVar2.isEmpty()) {
            zzgvVar3 = zzgvVar;
            if (!zzgvVar.zzc()) {
                zzgvVar3 = zzgvVar.zza();
            }
            zzgvVar3.zza(zzgvVar2);
        }
        return zzgvVar3;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgu
    public final Map<?, ?> zza(Object obj) {
        return (zzgv) obj;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgu
    public final Object zzb(Object obj) {
        ((zzgv) obj).zzb();
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgu
    public final zzgs<?, ?> zzc(Object obj) {
        zzgt zzgtVar = (zzgt) obj;
        throw new NoSuchMethodError();
    }
}
