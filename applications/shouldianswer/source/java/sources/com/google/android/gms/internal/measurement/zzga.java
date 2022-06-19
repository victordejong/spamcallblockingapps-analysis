package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzga.class */
final class zzga extends zzfy {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: private */
    public zzga() {
        super();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzfw zzfwVar;
        zzfw zzfwVar2;
        List<L> zzc = zzc(obj, j);
        if (zzc.isEmpty()) {
            zzfw zzfwVar3 = zzc instanceof zzfv ? new zzfw(i) : (!(zzc instanceof zzha) || !(zzc instanceof zzfl)) ? new ArrayList(i) : ((zzfl) zzc).zza(i);
            zzib.zza(obj, j, zzfwVar3);
            zzfwVar = zzfwVar3;
        } else {
            if (zza.isAssignableFrom(zzc.getClass())) {
                ArrayList arrayList = new ArrayList(zzc.size() + i);
                arrayList.addAll(zzc);
                zzib.zza(obj, j, arrayList);
                zzfwVar2 = arrayList;
            } else if (zzc instanceof zzia) {
                zzfw zzfwVar4 = new zzfw(zzc.size() + i);
                zzfwVar4.addAll((zzia) zzc);
                zzib.zza(obj, j, zzfwVar4);
                zzfwVar2 = zzfwVar4;
            } else {
                zzfwVar = zzc;
                if (zzc instanceof zzha) {
                    zzfwVar = zzc;
                    if (zzc instanceof zzfl) {
                        zzfl zzflVar = (zzfl) zzc;
                        zzfwVar = zzc;
                        if (!zzflVar.zza()) {
                            zzfl zza2 = zzflVar.zza(zzc.size() + i);
                            zzib.zza(obj, j, zza2);
                            zzfwVar = zza2;
                        }
                    }
                }
            }
            zzfwVar = zzfwVar2;
        }
        return zzfwVar;
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzib.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final <E> void zza(Object obj, Object obj2, long j) {
        List zzc = zzc(obj2, j);
        List zza2 = zza(obj, j, zzc.size());
        int size = zza2.size();
        int size2 = zzc.size();
        if (size > 0 && size2 > 0) {
            zza2.addAll(zzc);
        }
        if (size > 0) {
            zzc = zza2;
        }
        zzib.zza(obj, j, zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final void zzb(Object obj, long j) {
        zzfv zzfvVar;
        List list = (List) zzib.zzf(obj, j);
        if (list instanceof zzfv) {
            zzfvVar = ((zzfv) list).mo3776g_();
        } else if (zza.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzha) && (list instanceof zzfl)) {
                zzfl zzflVar = (zzfl) list;
                if (!zzflVar.zza()) {
                    return;
                }
                zzflVar.mo3777h_();
                return;
            }
            zzfvVar = Collections.unmodifiableList(list);
        }
        zzib.zza(obj, j, zzfvVar);
    }
}
