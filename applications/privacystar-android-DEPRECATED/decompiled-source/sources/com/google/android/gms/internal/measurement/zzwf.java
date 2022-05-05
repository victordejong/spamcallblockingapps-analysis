package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwf.class */
final class zzwf extends zzwd {
    private static final Class<?> zzcal = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzwf() {
        super();
    }

    private static <L> List<L> zza(Object obj, long j, int i) {
        zzwb zzwbVar;
        List<L> zzc = zzc(obj, j);
        if (zzc.isEmpty()) {
            zzwbVar = zzc instanceof zzwc ? new zzwb(i) : (!(zzc instanceof zzxe) || !(zzc instanceof zzvs)) ? new ArrayList(i) : ((zzvs) zzc).zzak(i);
            zzyh.zza(obj, j, zzwbVar);
        } else if (zzcal.isAssignableFrom(zzc.getClass())) {
            ArrayList arrayList = new ArrayList(zzc.size() + i);
            arrayList.addAll(zzc);
            zzyh.zza(obj, j, arrayList);
            zzwbVar = arrayList;
        } else if (zzc instanceof zzye) {
            zzwb zzwbVar2 = new zzwb(zzc.size() + i);
            zzwbVar2.addAll((zzye) zzc);
            zzyh.zza(obj, j, zzwbVar2);
            zzwbVar = zzwbVar2;
        } else {
            zzwbVar = zzc;
            if (zzc instanceof zzxe) {
                zzwbVar = zzc;
                if (zzc instanceof zzvs) {
                    zzvs zzvsVar = (zzvs) zzc;
                    zzwbVar = zzc;
                    if (!zzvsVar.zztw()) {
                        zzwbVar = zzvsVar.zzak(zzc.size() + i);
                        zzyh.zza(obj, j, zzwbVar);
                    }
                }
            }
        }
        return zzwbVar;
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzyh.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final <E> void zza(Object obj, Object obj2, long j) {
        List zzc = zzc(obj2, j);
        List zza = zza(obj, j, zzc.size());
        int size = zza.size();
        int size2 = zzc.size();
        if (size > 0 && size2 > 0) {
            zza.addAll(zzc);
        }
        if (size > 0) {
            zzc = zza;
        }
        zzyh.zza(obj, j, zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final void zzb(Object obj, long j) {
        Object obj2;
        List list = (List) zzyh.zzp(obj, j);
        if (list instanceof zzwc) {
            obj2 = ((zzwc) list).zzww();
        } else if (!zzcal.isAssignableFrom(list.getClass())) {
            if (!(list instanceof zzxe) || !(list instanceof zzvs)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzvs zzvsVar = (zzvs) list;
                if (zzvsVar.zztw()) {
                    zzvsVar.zzsm();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        zzyh.zza(obj, j, obj2);
    }
}
