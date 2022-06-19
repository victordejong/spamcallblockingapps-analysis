package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfz.class */
final class zzfz extends zzfy {
    /* JADX INFO: Access modifiers changed from: private */
    public zzfz() {
        super();
    }

    private static <E> zzfl<E> zzc(Object obj, long j) {
        return (zzfl) zzib.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final <L> List<L> zza(Object obj, long j) {
        zzfl zzc = zzc(obj, j);
        zzfl zzflVar = zzc;
        if (!zzc.zza()) {
            int size = zzc.size();
            zzflVar = zzc.zza(size == 0 ? 10 : size << 1);
            zzib.zza(obj, j, zzflVar);
        }
        return zzflVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzfl zzc = zzc(obj, j);
        zzfl<E> zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzfl<E> zzflVar = zzc;
        if (size > 0) {
            zzflVar = zzc;
            if (size2 > 0) {
                zzflVar = zzc;
                if (!zzc.zza()) {
                    zzflVar = zzc.zza(size2 + size);
                }
                zzflVar.addAll(zzc2);
            }
        }
        zzfl<E> zzflVar2 = zzc2;
        if (size > 0) {
            zzflVar2 = zzflVar;
        }
        zzib.zza(obj, j, zzflVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    public final void zzb(Object obj, long j) {
        zzc(obj, j).mo3777h_();
    }
}
