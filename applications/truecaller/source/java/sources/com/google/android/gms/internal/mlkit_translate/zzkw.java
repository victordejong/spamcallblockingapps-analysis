package com.google.android.gms.internal.mlkit_translate;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkw.class */
public final class zzkw extends zzku {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzkw() {
        super();
    }

    private static <E> List<E> zzb(Object obj, long j) {
        return (List) zzmy.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzku
    public final void zza(Object obj, long j) {
        zzkv zzkvVar;
        List list = (List) zzmy.zzf(obj, j);
        if (list instanceof zzkv) {
            zzkvVar = ((zzkv) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzlx) && (list instanceof zzkl)) {
                zzkl zzklVar = (zzkl) list;
                if (!zzklVar.zza()) {
                    return;
                }
                zzklVar.zzb();
                return;
            }
            zzkvVar = Collections.unmodifiableList(list);
        }
        zzmy.zza(obj, j, zzkvVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzku
    public final <E> void zza(Object obj, Object obj2, long j) {
        ArrayList arrayList;
        List zzb = zzb(obj2, j);
        int size = zzb.size();
        List zzb2 = zzb(obj, j);
        if (zzb2.isEmpty()) {
            zzks zzksVar = zzb2 instanceof zzkv ? new zzks(size) : (!(zzb2 instanceof zzlx) || !(zzb2 instanceof zzkl)) ? new ArrayList(size) : ((zzkl) zzb2).zzd(size);
            zzmy.zza(obj, j, zzksVar);
            arrayList = zzksVar;
        } else if (zza.isAssignableFrom(zzb2.getClass())) {
            ArrayList arrayList2 = new ArrayList(zzb2.size() + size);
            arrayList2.addAll(zzb2);
            zzmy.zza(obj, j, arrayList2);
            arrayList = arrayList2;
        } else if (zzb2 instanceof zzmx) {
            zzks zzksVar2 = new zzks(zzb2.size() + size);
            zzksVar2.addAll((zzmx) zzb2);
            zzmy.zza(obj, j, zzksVar2);
            arrayList = zzksVar2;
        } else {
            arrayList = zzb2;
            if (zzb2 instanceof zzlx) {
                arrayList = zzb2;
                if (zzb2 instanceof zzkl) {
                    zzkl zzklVar = (zzkl) zzb2;
                    arrayList = zzb2;
                    if (!zzklVar.zza()) {
                        zzkl<E> zzd = zzklVar.zzd(zzb2.size() + size);
                        zzmy.zza(obj, j, zzd);
                        arrayList = zzd;
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
        zzmy.zza(obj, j, zzb);
    }
}
