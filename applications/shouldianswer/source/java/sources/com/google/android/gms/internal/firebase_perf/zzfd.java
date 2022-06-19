package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeo;
import com.google.android.gms.internal.firebase-perf.zzey;
import com.google.android.gms.internal.firebase-perf.zzfa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfd.class */
final class zzfd extends zzfb {
    private static final Class<?> zzrx = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzfd() {
        super(null);
    }

    public /* synthetic */ zzfd(zzfa zzfaVar) {
        this();
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzhc.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfb
    public final void zza(Object obj, long j) {
        zzey zzeyVar;
        List list = (List) zzhc.zzo(obj, j);
        if (list instanceof zzey) {
            zzeyVar = ((zzey) list).zzgz();
        } else if (zzrx.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof zzga) && (list instanceof zzeo)) {
                zzeo zzeoVar = (zzeo) list;
                if (!zzeoVar.zzfj()) {
                    return;
                }
                zzeoVar.zzfk();
                return;
            }
            zzeyVar = Collections.unmodifiableList(list);
        }
        zzhc.zza(obj, j, zzeyVar);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfb
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzeo zzeoVar;
        zzeo zzc = zzc(obj2, j);
        int size = zzc.size();
        zzeo zzc2 = zzc(obj, j);
        if (zzc2.isEmpty()) {
            zzeoVar = zzc2 instanceof zzey ? new zzez(size) : (!(zzc2 instanceof zzga) || !(zzc2 instanceof zzeo)) ? new ArrayList(size) : ((zzeo) zzc2).zzao(size);
            zzhc.zza(obj, j, zzeoVar);
        } else if (zzrx.isAssignableFrom(zzc2.getClass())) {
            zzeoVar = new ArrayList(zzc2.size() + size);
            zzeoVar.addAll(zzc2);
            zzhc.zza(obj, j, zzeoVar);
        } else if (zzc2 instanceof zzhb) {
            zzeoVar = new zzez(zzc2.size() + size);
            zzeoVar.addAll((zzhb) zzc2);
            zzhc.zza(obj, j, zzeoVar);
        } else {
            zzeoVar = zzc2;
            if (zzc2 instanceof zzga) {
                zzeoVar = zzc2;
                if (zzc2 instanceof zzeo) {
                    zzeo zzeoVar2 = (zzeo) zzc2;
                    zzeoVar = zzc2;
                    if (!zzeoVar2.zzfj()) {
                        zzeoVar = zzeoVar2.zzao(zzc2.size() + size);
                        zzhc.zza(obj, j, zzeoVar);
                    }
                }
            }
        }
        int size2 = zzeoVar.size();
        int size3 = zzc.size();
        if (size2 > 0 && size3 > 0) {
            zzeoVar.addAll(zzc);
        }
        if (size2 > 0) {
            zzc = zzeoVar;
        }
        zzhc.zza(obj, j, zzc);
    }
}
