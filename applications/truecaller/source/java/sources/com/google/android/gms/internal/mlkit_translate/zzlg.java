package com.google.android.gms.internal.mlkit_translate;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlg.class */
public final class zzlg implements zzlh {
    @Override // com.google.android.gms.internal.mlkit_translate.zzlh
    public final int zza(int i, Object obj, Object obj2) {
        zzle zzleVar = (zzle) obj;
        zzlc zzlcVar = (zzlc) obj2;
        if (zzleVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzleVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlh
    public final zzlf<?, ?> zza(Object obj) {
        zzlc zzlcVar = (zzlc) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlh
    public final Object zza(Object obj, Object obj2) {
        zzle zzleVar = (zzle) obj;
        zzle zzleVar2 = (zzle) obj2;
        zzle zzleVar3 = zzleVar;
        if (!zzleVar2.isEmpty()) {
            zzleVar3 = zzleVar;
            if (!zzleVar.zzc()) {
                zzleVar3 = zzleVar.zza();
            }
            zzleVar3.zza(zzleVar2);
        }
        return zzleVar3;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlh
    public final Map<?, ?> zzb(Object obj) {
        return (zzle) obj;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlh
    public final Object zzc(Object obj) {
        ((zzle) obj).zzb();
        return obj;
    }
}
