package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeo;
import com.google.android.gms.internal.firebase-perf.zzfa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfc.class */
final class zzfc extends zzfb {
    private zzfc() {
        super(null);
    }

    public /* synthetic */ zzfc(zzfa zzfaVar) {
        this();
    }

    private static <E> zzeo<E> zzb(Object obj, long j) {
        return (zzeo) zzhc.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfb
    public final void zza(Object obj, long j) {
        zzb(obj, j).zzfk();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfb
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzeo zzb = zzb(obj, j);
        zzeo<E> zzb2 = zzb(obj2, j);
        int size = zzb.size();
        int size2 = zzb2.size();
        zzeo<E> zzeoVar = zzb;
        if (size > 0) {
            zzeoVar = zzb;
            if (size2 > 0) {
                zzeoVar = zzb;
                if (!zzb.zzfj()) {
                    zzeoVar = zzb.zzao(size2 + size);
                }
                zzeoVar.addAll(zzb2);
            }
        }
        zzeo<E> zzeoVar2 = zzb2;
        if (size > 0) {
            zzeoVar2 = zzeoVar;
        }
        zzhc.zza(obj, j, zzeoVar2);
    }
}
