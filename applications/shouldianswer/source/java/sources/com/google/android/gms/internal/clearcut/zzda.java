package com.google.android.gms.internal.clearcut;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzda.class */
final class zzda extends zzcy {
    private static final Class<?> zzlv = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzda() {
        super();
    }

    private static <E> List<E> zzb(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void zza(Object obj, long j) {
        zzcx zzcxVar;
        List list = (List) zzfd.zzo(obj, j);
        if (list instanceof zzcx) {
            zzcxVar = ((zzcx) list).zzbu();
        } else if (zzlv.isAssignableFrom(list.getClass())) {
            return;
        } else {
            zzcxVar = Collections.unmodifiableList(list);
        }
        zzfd.zza(obj, j, zzcxVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzcw zzcwVar;
        ArrayList arrayList;
        List zzb = zzb(obj2, j);
        int size = zzb.size();
        List zzb2 = zzb(obj, j);
        if (zzb2.isEmpty()) {
            zzcw zzcwVar2 = zzb2 instanceof zzcx ? new zzcw(size) : new ArrayList(size);
            zzfd.zza(obj, j, zzcwVar2);
            zzcwVar = zzcwVar2;
        } else {
            if (zzlv.isAssignableFrom(zzb2.getClass())) {
                ArrayList arrayList2 = new ArrayList(zzb2.size() + size);
                arrayList2.addAll(zzb2);
                arrayList = arrayList2;
            } else {
                zzcwVar = zzb2;
                if (zzb2 instanceof zzfa) {
                    zzcw zzcwVar3 = new zzcw(zzb2.size() + size);
                    zzcwVar3.addAll((zzfa) zzb2);
                    arrayList = zzcwVar3;
                }
            }
            zzfd.zza(obj, j, arrayList == 1 ? 1 : 0);
            zzcwVar = arrayList;
        }
        int size2 = zzcwVar.size();
        int size3 = zzb.size();
        if (size2 > 0 && size3 > 0) {
            zzcwVar.addAll(zzb);
        }
        if (size2 > 0) {
            zzb = zzcwVar;
        }
        zzfd.zza(obj, j, zzb);
    }
}
