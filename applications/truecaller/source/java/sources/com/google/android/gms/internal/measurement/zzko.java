package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzko.class */
public final class zzko extends zzkq {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzko() {
        super(null);
    }

    public /* synthetic */ zzko(zzkn zzknVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final void zza(Object obj, long j) {
        zzkm zzkmVar;
        List list = (List) zzml.zzf(obj, j);
        if (list instanceof zzkm) {
            zzkmVar = ((zzkm) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzlj) && (list instanceof zzke)) {
                zzke zzkeVar = (zzke) list;
                if (!zzkeVar.zzc()) {
                    return;
                }
                zzkeVar.zzb();
                return;
            }
            zzkmVar = Collections.unmodifiableList(list);
        }
        zzml.zzs(obj, j, zzkmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final void zzb(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List list = (List) zzml.zzf(obj2, j);
        int size = list.size();
        List list2 = (List) zzml.zzf(obj, j);
        if (list2.isEmpty()) {
            zzkl zzklVar = list2 instanceof zzkm ? new zzkl(size) : (!(list2 instanceof zzlj) || !(list2 instanceof zzke)) ? new ArrayList(size) : ((zzke) list2).zzd(size);
            zzml.zzs(obj, j, zzklVar);
            arrayList = zzklVar;
        } else if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList2 = new ArrayList(list2.size() + size);
            arrayList2.addAll(list2);
            zzml.zzs(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (list2 instanceof zzmg) {
            zzkl zzklVar2 = new zzkl(list2.size() + size);
            zzklVar2.addAll(zzklVar2.size(), (zzmg) list2);
            zzml.zzs(obj, j, zzklVar2);
            arrayList = zzklVar2;
        } else {
            arrayList = list2;
            if (list2 instanceof zzlj) {
                arrayList = list2;
                if (list2 instanceof zzke) {
                    zzke zzkeVar = (zzke) list2;
                    arrayList = list2;
                    if (!zzkeVar.zzc()) {
                        zzke zzd = zzkeVar.zzd(list2.size() + size);
                        zzml.zzs(obj, j, zzd);
                        arrayList = zzd;
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
        zzml.zzs(obj, j, list3);
    }
}
