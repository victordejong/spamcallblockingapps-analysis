package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdf.class */
final class zzdf extends zzdc {
    private zzdf() {
        super();
    }

    private static <E> zzcr<E> zzc(Object obj, long j) {
        return (zzcr) zzfd.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.icing.zzdc
    final void zza(Object obj, long j) {
        zzc(obj, j).zzp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.gms.internal.icing.zzcr] */
    @Override // com.google.android.gms.internal.icing.zzdc
    final <E> void zza(Object obj, Object obj2, long j) {
        zzcr zzc = zzc(obj, j);
        zzcr zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzcr zzcrVar = zzc;
        if (size > 0) {
            zzcrVar = zzc;
            if (size2 > 0) {
                zzcr<E> zzcrVar2 = zzc;
                if (!zzc.zzo()) {
                    zzcrVar2 = zzc.zzh(size2 + size);
                }
                zzcrVar2.addAll(zzc2);
                zzcrVar = zzcrVar2;
            }
        }
        zzcrVar = zzc2;
        if (size > 0) {
        }
        zzfd.zza(obj, j, zzcrVar);
    }
}
