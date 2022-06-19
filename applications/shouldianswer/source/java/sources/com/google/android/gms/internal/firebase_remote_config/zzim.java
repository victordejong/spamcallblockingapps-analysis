package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzim.class */
final class zzim implements zzij {
    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final int zzc(int i, Object obj, Object obj2) {
        zzik zzikVar = (zzik) obj;
        if (zzikVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzikVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final Object zzd(Object obj, Object obj2) {
        zzik zzikVar = (zzik) obj;
        zzik zzikVar2 = (zzik) obj2;
        zzik zzikVar3 = zzikVar;
        if (!zzikVar2.isEmpty()) {
            zzikVar3 = zzikVar;
            if (!zzikVar.isMutable()) {
                zzikVar3 = zzikVar.zzhw();
            }
            zzikVar3.zza(zzikVar2);
        }
        return zzikVar3;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final Map<?, ?> zzp(Object obj) {
        return (zzik) obj;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final Map<?, ?> zzq(Object obj) {
        return (zzik) obj;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final boolean zzr(Object obj) {
        return !((zzik) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final Object zzs(Object obj) {
        ((zzik) obj).zzes();
        return obj;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final Object zzt(Object obj) {
        return zzik.zzhv().zzhw();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzij
    public final zzih<?, ?> zzu(Object obj) {
        throw new NoSuchMethodError();
    }
}
