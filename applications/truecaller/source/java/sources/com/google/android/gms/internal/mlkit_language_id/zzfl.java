package com.google.android.gms.internal.mlkit_language_id;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfl.class */
public final class zzfl extends zzfj {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzfl() {
        super();
    }

    private static <E> List<E> zzb(Object obj, long j) {
        return (List) zzhn.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    public final void zza(Object obj, long j) {
        zzfg zzfgVar;
        List list = (List) zzhn.zzf(obj, j);
        if (list instanceof zzfg) {
            zzfgVar = ((zzfg) list).mo38715a_();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzgi) && (list instanceof zzew)) {
                zzew zzewVar = (zzew) list;
                if (!zzewVar.zza()) {
                    return;
                }
                zzewVar.mo38716b_();
                return;
            }
            zzfgVar = Collections.unmodifiableList(list);
        }
        zzhn.zza(obj, j, zzfgVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    public final <E> void zza(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List zzb = zzb(obj2, j);
        int size = zzb.size();
        List zzb2 = zzb(obj, j);
        if (zzb2.isEmpty()) {
            zzfh zzfhVar = zzb2 instanceof zzfg ? new zzfh(size) : (!(zzb2 instanceof zzgi) || !(zzb2 instanceof zzew)) ? new ArrayList(size) : ((zzew) zzb2).zzb(size);
            zzhn.zza(obj, j, zzfhVar);
            arrayList = zzfhVar;
        } else if (zza.isAssignableFrom(zzb2.getClass())) {
            ArrayList arrayList2 = new ArrayList(zzb2.size() + size);
            arrayList2.addAll(zzb2);
            zzhn.zza(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (zzb2 instanceof zzhi) {
            zzfh zzfhVar2 = new zzfh(zzb2.size() + size);
            zzfhVar2.addAll((zzhi) zzb2);
            zzhn.zza(obj, j, zzfhVar2);
            arrayList = zzfhVar2;
        } else {
            arrayList = zzb2;
            if (zzb2 instanceof zzgi) {
                arrayList = zzb2;
                if (zzb2 instanceof zzew) {
                    zzew zzewVar = (zzew) zzb2;
                    arrayList = zzb2;
                    if (!zzewVar.zza()) {
                        zzew<E> zzb3 = zzewVar.zzb(zzb2.size() + size);
                        zzhn.zza(obj, j, zzb3);
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
        zzhn.zza(obj, j, zzb);
    }
}
