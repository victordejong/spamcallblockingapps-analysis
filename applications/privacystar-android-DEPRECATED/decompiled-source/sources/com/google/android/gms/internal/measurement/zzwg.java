package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwg.class */
final class zzwg extends zzwd {
    private zzwg() {
        super();
    }

    private static <E> zzvs<E> zzd(Object obj, long j) {
        return (zzvs) zzyh.zzp(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final <L> List<L> zza(Object obj, long j) {
        zzvs zzd = zzd(obj, j);
        zzvs zzvsVar = zzd;
        if (!zzd.zztw()) {
            int size = zzd.size();
            zzvsVar = zzd.zzak(size == 0 ? 10 : size << 1);
            zzyh.zza(obj, j, zzvsVar);
        }
        return zzvsVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.gms.internal.measurement.zzvs] */
    @Override // com.google.android.gms.internal.measurement.zzwd
    final <E> void zza(Object obj, Object obj2, long j) {
        zzvs zzd = zzd(obj, j);
        zzvs zzd2 = zzd(obj2, j);
        int size = zzd.size();
        int size2 = zzd2.size();
        zzvs zzvsVar = zzd;
        if (size > 0) {
            zzvsVar = zzd;
            if (size2 > 0) {
                zzvs<E> zzvsVar2 = zzd;
                if (!zzd.zztw()) {
                    zzvsVar2 = zzd.zzak(size2 + size);
                }
                zzvsVar2.addAll(zzd2);
                zzvsVar = zzvsVar2;
            }
        }
        zzvsVar = zzd2;
        if (size > 0) {
        }
        zzyh.zza(obj, j, zzvsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final void zzb(Object obj, long j) {
        zzd(obj, j).zzsm();
    }
}
