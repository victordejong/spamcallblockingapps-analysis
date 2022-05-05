package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdn.class */
final class zzdn implements zzdm {
    @Override // com.google.android.gms.internal.icing.zzdm
    public final int zzb(int i, Object obj, Object obj2) {
        zzdl zzdlVar = (zzdl) obj;
        if (zzdlVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdlVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.icing.zzdm
    public final Object zzb(Object obj, Object obj2) {
        zzdl zzdlVar = (zzdl) obj;
        zzdl zzdlVar2 = (zzdl) obj2;
        zzdl zzdlVar3 = zzdlVar;
        if (!zzdlVar2.isEmpty()) {
            zzdlVar3 = zzdlVar;
            if (!zzdlVar.isMutable()) {
                zzdlVar3 = zzdlVar.zzbn();
            }
            zzdlVar3.zza(zzdlVar2);
        }
        return zzdlVar3;
    }

    @Override // com.google.android.gms.internal.icing.zzdm
    public final Map<?, ?> zzg(Object obj) {
        return (zzdl) obj;
    }

    @Override // com.google.android.gms.internal.icing.zzdm
    public final Object zzh(Object obj) {
        ((zzdl) obj).zzp();
        return obj;
    }

    @Override // com.google.android.gms.internal.icing.zzdm
    public final zzdk<?, ?> zzi(Object obj) {
        throw new NoSuchMethodError();
    }
}
