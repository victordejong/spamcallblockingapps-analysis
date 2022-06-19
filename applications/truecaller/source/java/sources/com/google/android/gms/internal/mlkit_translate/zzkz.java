package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkz.class */
public final class zzkz extends zzku {
    /* JADX INFO: Access modifiers changed from: private */
    public zzkz() {
        super();
    }

    private static <E> zzkl<E> zzb(Object obj, long j) {
        return (zzkl) zzmy.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzku
    public final void zza(Object obj, long j) {
        zzb(obj, j).zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzku
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzkl zzb = zzb(obj, j);
        zzkl<E> zzb2 = zzb(obj2, j);
        int size = zzb.size();
        int size2 = zzb2.size();
        zzkl<E> zzklVar = zzb;
        if (size > 0) {
            zzklVar = zzb;
            if (size2 > 0) {
                zzklVar = zzb;
                if (!zzb.zza()) {
                    zzklVar = zzb.zzd(size2 + size);
                }
                zzklVar.addAll(zzb2);
            }
        }
        zzkl<E> zzklVar2 = zzb2;
        if (size > 0) {
            zzklVar2 = zzklVar;
        }
        zzmy.zza(obj, j, zzklVar2);
    }
}
