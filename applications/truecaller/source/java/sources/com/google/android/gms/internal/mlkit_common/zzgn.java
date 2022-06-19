package com.google.android.gms.internal.mlkit_common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgn.class */
public final class zzgn extends zzgl {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzgn() {
        super();
    }

    private static <E> List<E> zzb(Object obj, long j) {
        return (List) zzip.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgl
    public final void zza(Object obj, long j) {
        zzgi zzgiVar;
        List list = (List) zzip.zzf(obj, j);
        if (list instanceof zzgi) {
            zzgiVar = ((zzgi) list).mo38717a_();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzhk) && (list instanceof zzfy)) {
                zzfy zzfyVar = (zzfy) list;
                if (!zzfyVar.zza()) {
                    return;
                }
                zzfyVar.mo38718b_();
                return;
            }
            zzgiVar = Collections.unmodifiableList(list);
        }
        zzip.zza(obj, j, zzgiVar);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgl
    public final <E> void zza(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List zzb = zzb(obj2, j);
        int size = zzb.size();
        List zzb2 = zzb(obj, j);
        if (zzb2.isEmpty()) {
            zzgj zzgjVar = zzb2 instanceof zzgi ? new zzgj(size) : (!(zzb2 instanceof zzhk) || !(zzb2 instanceof zzfy)) ? new ArrayList(size) : ((zzfy) zzb2).zzb(size);
            zzip.zza(obj, j, zzgjVar);
            arrayList = zzgjVar;
        } else if (zza.isAssignableFrom(zzb2.getClass())) {
            ArrayList arrayList2 = new ArrayList(zzb2.size() + size);
            arrayList2.addAll(zzb2);
            zzip.zza(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (zzb2 instanceof zzik) {
            zzgj zzgjVar2 = new zzgj(zzb2.size() + size);
            zzgjVar2.addAll((zzik) zzb2);
            zzip.zza(obj, j, zzgjVar2);
            arrayList = zzgjVar2;
        } else {
            arrayList = zzb2;
            if (zzb2 instanceof zzhk) {
                arrayList = zzb2;
                if (zzb2 instanceof zzfy) {
                    zzfy zzfyVar = (zzfy) zzb2;
                    arrayList = zzb2;
                    if (!zzfyVar.zza()) {
                        zzfy<E> zzb3 = zzfyVar.zzb(zzb2.size() + size);
                        zzip.zza(obj, j, zzb3);
                        arrayList = zzb3;
                    }
                }
            }
        }
        int size2 = arrayList.size();
        int size3 = zzb.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(zzb);
        }
        if (size2 > 0) {
            zzb = arrayList;
        }
        zzip.zza(obj, j, zzb);
    }
}
