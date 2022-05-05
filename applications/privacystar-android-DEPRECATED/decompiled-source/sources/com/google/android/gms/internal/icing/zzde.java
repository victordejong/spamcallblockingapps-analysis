package com.google.android.gms.internal.icing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzde.class */
final class zzde extends zzdc {
    private static final Class<?> zzjl = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzde() {
        super();
    }

    private static <E> List<E> zzb(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.icing.zzdc
    final void zza(Object obj, long j) {
        Object obj2;
        List list = (List) zzfd.zzo(obj, j);
        if (list instanceof zzdb) {
            obj2 = ((zzdb) list).zzbi();
        } else if (!zzjl.isAssignableFrom(list.getClass())) {
            obj2 = Collections.unmodifiableList(list);
        } else {
            return;
        }
        zzfd.zza(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzdc
    final <E> void zza(Object obj, Object obj2, long j) {
        List list;
        zzda zzdaVar;
        List zzb = zzb(obj2, j);
        int size = zzb.size();
        List zzb2 = zzb(obj, j);
        if (zzb2.isEmpty()) {
            List zzdaVar2 = zzb2 instanceof zzdb ? new zzda(size) : new ArrayList(size);
            zzfd.zza(obj, j, zzdaVar2);
            list = zzdaVar2;
        } else {
            if (zzjl.isAssignableFrom(zzb2.getClass())) {
                ArrayList arrayList = new ArrayList(zzb2.size() + size);
                arrayList.addAll(zzb2);
                zzdaVar = arrayList;
            } else {
                list = zzb2;
                if (zzb2 instanceof zzfa) {
                    zzda zzdaVar3 = new zzda(zzb2.size() + size);
                    zzdaVar3.addAll((zzfa) zzb2);
                    zzdaVar = zzdaVar3;
                }
            }
            zzfd.zza(obj, j, zzdaVar);
            list = zzdaVar;
        }
        int size2 = list.size();
        int size3 = zzb.size();
        if (size2 > 0 && size3 > 0) {
            list.addAll(zzb);
        }
        if (size2 > 0) {
            zzb = list;
        }
        zzfd.zza(obj, j, zzb);
    }
}
