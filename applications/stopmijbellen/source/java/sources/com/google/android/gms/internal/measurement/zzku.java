package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
final class zzku extends zzkw {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzku() {
        super(null);
    }

    public /* synthetic */ zzku(zzkt zzktVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final void zza(Object obj, long j) {
        zzks zzksVar;
        List list = (List) zzmr.zzn(obj, j);
        if (list instanceof zzks) {
            zzksVar = ((zzks) list).zzi();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzlp) && (list instanceof zzkk)) {
                zzkk zzkkVar = (zzkk) list;
                if (!zzkkVar.zza()) {
                    return;
                }
                zzkkVar.zzb();
                return;
            }
            zzksVar = Collections.unmodifiableList(list);
        }
        zzmr.zzo(obj, j, zzksVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final <E> void zzb(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) zzmr.zzn(obj2, j);
        int size = list.size();
        List list2 = (List) zzmr.zzn(obj, j);
        if (list2.isEmpty()) {
            zzkr zzkrVar = list2 instanceof zzks ? new zzkr(size) : (!(list2 instanceof zzlp) || !(list2 instanceof zzkk)) ? new ArrayList(size) : ((zzkk) list2).zze(size);
            zzmr.zzo(obj, j, zzkrVar);
            arrayList = zzkrVar;
        } else if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList2 = new ArrayList(list2.size() + size);
            arrayList2.addAll(list2);
            zzmr.zzo(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (list2 instanceof zzmm) {
            zzkr zzkrVar2 = new zzkr(list2.size() + size);
            zzkrVar2.addAll(zzkrVar2.size(), (zzmm) list2);
            zzmr.zzo(obj, j, zzkrVar2);
            arrayList = zzkrVar2;
        } else {
            arrayList = list2;
            if (list2 instanceof zzlp) {
                arrayList = list2;
                if (list2 instanceof zzkk) {
                    zzkk zzkkVar = (zzkk) list2;
                    arrayList = list2;
                    if (!zzkkVar.zza()) {
                        zzkk<E> zze = zzkkVar.zze(list2.size() + size);
                        zzmr.zzo(obj, j, zze);
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
        zzmr.zzo(obj, j, list3);
    }
}
