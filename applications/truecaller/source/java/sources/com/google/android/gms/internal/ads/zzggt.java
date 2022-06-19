package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggt.class */
public final class zzggt extends zzggw {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzggt() {
        super(null);
    }

    public /* synthetic */ zzggt(zzggv zzggvVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zzf(Object obj, long j, int i) {
        zzggr zzggrVar;
        zzggr zzggrVar2;
        List<L> list = (List) zzgiy.zzn(obj, j);
        if (list.isEmpty()) {
            zzggr zzggrVar3 = list instanceof zzggs ? new zzggr(i) : (!(list instanceof zzghp) || !(list instanceof zzggj)) ? new ArrayList(i) : ((zzggj) list).zze(i);
            zzgiy.zzo(obj, j, zzggrVar3);
            zzggrVar = zzggrVar3;
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                zzgiy.zzo(obj, j, arrayList);
                zzggrVar2 = arrayList;
            } else if (list instanceof zzgit) {
                zzggr zzggrVar4 = new zzggr(list.size() + i);
                zzggrVar4.addAll(zzggrVar4.size(), (zzgit) list);
                zzgiy.zzo(obj, j, zzggrVar4);
                zzggrVar2 = zzggrVar4;
            } else {
                zzggrVar = list;
                if (list instanceof zzghp) {
                    zzggrVar = list;
                    if (list instanceof zzggj) {
                        zzggj zzggjVar = (zzggj) list;
                        if (!zzggjVar.zza()) {
                            zzggj zze = zzggjVar.zze(list.size() + i);
                            zzgiy.zzo(obj, j, zze);
                            return zze;
                        }
                        zzggrVar = list;
                    }
                }
            }
            zzggrVar = zzggrVar2;
        }
        return zzggrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final <L> List<L> zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final void zzb(Object obj, long j) {
        zzggs zzggsVar;
        List list = (List) zzgiy.zzn(obj, j);
        if (list instanceof zzggs) {
            zzggsVar = ((zzggs) list).zzi();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzghp) && (list instanceof zzggj)) {
                zzggj zzggjVar = (zzggj) list;
                if (!zzggjVar.zza()) {
                    return;
                }
                zzggjVar.zzb();
                return;
            }
            zzggsVar = Collections.unmodifiableList(list);
        }
        zzgiy.zzo(obj, j, zzggsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzggw
    public final <E> void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzgiy.zzn(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzgiy.zzo(obj, j, list);
    }
}
