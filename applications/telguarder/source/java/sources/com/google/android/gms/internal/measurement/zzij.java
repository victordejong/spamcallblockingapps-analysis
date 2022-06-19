package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzij.class */
final class zzij extends zzil {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzij() {
        super(null);
    }

    public /* synthetic */ zzij(zzii zziiVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final void zza(Object obj, long j) {
        zzih zzihVar;
        List list = (List) zzkh.zzn(obj, j);
        if (list instanceof zzih) {
            zzihVar = ((zzih) list).zzi();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzje) && (list instanceof zzhz)) {
                zzhz zzhzVar = (zzhz) list;
                if (!zzhzVar.zza()) {
                    return;
                }
                zzhzVar.zzb();
                return;
            }
            zzihVar = Collections.unmodifiableList(list);
        }
        zzkh.zzo(obj, j, zzihVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final <E> void zzb(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) zzkh.zzn(obj2, j);
        int size = list.size();
        List list2 = (List) zzkh.zzn(obj, j);
        if (list2.isEmpty()) {
            zzig zzigVar = list2 instanceof zzih ? new zzig(size) : (!(list2 instanceof zzje) || !(list2 instanceof zzhz)) ? new ArrayList(size) : ((zzhz) list2).zze(size);
            zzkh.zzo(obj, j, zzigVar);
            arrayList = zzigVar;
        } else if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList2 = new ArrayList(list2.size() + size);
            arrayList2.addAll(list2);
            zzkh.zzo(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (list2 instanceof zzkb) {
            zzig zzigVar2 = new zzig(list2.size() + size);
            zzigVar2.addAll(zzigVar2.size(), (zzkb) list2);
            zzkh.zzo(obj, j, zzigVar2);
            arrayList = zzigVar2;
        } else {
            arrayList = list2;
            if (list2 instanceof zzje) {
                arrayList = list2;
                if (list2 instanceof zzhz) {
                    zzhz zzhzVar = (zzhz) list2;
                    arrayList = list2;
                    if (!zzhzVar.zza()) {
                        zzhz<E> zze = zzhzVar.zze(list2.size() + size);
                        zzkh.zzo(obj, j, zze);
                        arrayList = zze;
                    }
                }
            }
        }
        int size2 = (arrayList == 1 ? 1 : 0).size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            arrayList.addAll(list);
        }
        List list3 = arrayList;
        if (size2 <= 0) {
            list3 = list;
        }
        zzkh.zzo(obj, j, list3);
    }
}
