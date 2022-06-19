package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglf.class */
final class zzglf extends zzglj {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzglf() {
        super(null);
    }

    public /* synthetic */ zzglf(zzgle zzgleVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zzf(Object obj, long j, int i) {
        zzglc zzglcVar;
        zzglc zzglcVar2;
        List<L> list = (List) zzgnp.zzh(obj, j);
        if (list.isEmpty()) {
            zzglc zzglcVar3 = list instanceof zzgld ? new zzglc(i) : (!(list instanceof zzgmc) || !(list instanceof zzgku)) ? new ArrayList(i) : ((zzgku) list).zzd(i);
            zzgnp.zzv(obj, j, zzglcVar3);
            zzglcVar = zzglcVar3;
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                zzgnp.zzv(obj, j, arrayList);
                zzglcVar2 = arrayList;
            } else if (list instanceof zzgnk) {
                zzglc zzglcVar4 = new zzglc(list.size() + i);
                zzglcVar4.addAll(zzglcVar4.size(), (zzgnk) list);
                zzgnp.zzv(obj, j, zzglcVar4);
                zzglcVar2 = zzglcVar4;
            } else {
                zzglcVar = list;
                if (list instanceof zzgmc) {
                    zzglcVar = list;
                    if (list instanceof zzgku) {
                        zzgku zzgkuVar = (zzgku) list;
                        if (!zzgkuVar.zzc()) {
                            zzgku zzd = zzgkuVar.zzd(list.size() + i);
                            zzgnp.zzv(obj, j, zzd);
                            return zzd;
                        }
                        zzglcVar = list;
                    }
                }
            }
            zzglcVar = zzglcVar2;
        }
        return zzglcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final <L> List<L> zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final void zzb(Object obj, long j) {
        zzgld zzgldVar;
        List list = (List) zzgnp.zzh(obj, j);
        if (list instanceof zzgld) {
            zzgldVar = ((zzgld) list).zze();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzgmc) && (list instanceof zzgku)) {
                zzgku zzgkuVar = (zzgku) list;
                if (!zzgkuVar.zzc()) {
                    return;
                }
                zzgkuVar.zzb();
                return;
            }
            zzgldVar = Collections.unmodifiableList(list);
        }
        zzgnp.zzv(obj, j, zzgldVar);
    }

    @Override // com.google.android.gms.internal.ads.zzglj
    public final <E> void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzgnp.zzh(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzgnp.zzv(obj, j, list);
    }
}
