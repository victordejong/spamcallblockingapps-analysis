package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgm.class */
public final class zzgm extends zzgl {
    /* JADX INFO: Access modifiers changed from: private */
    public zzgm() {
        super();
    }

    private static <E> zzfy<E> zzb(Object obj, long j) {
        return (zzfy) zzip.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgl
    public final void zza(Object obj, long j) {
        zzb(obj, j).mo38718b_();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgl
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzfy zzb = zzb(obj, j);
        zzfy<E> zzb2 = zzb(obj2, j);
        int size = zzb.size();
        int size2 = zzb2.size();
        zzfy<E> zzfyVar = zzb;
        if (size > 0) {
            zzfyVar = zzb;
            if (size2 > 0) {
                zzfyVar = zzb;
                if (!zzb.zza()) {
                    zzfyVar = zzb.zzb(size2 + size);
                }
                zzfyVar.addAll(zzb2);
            }
        }
        zzfy<E> zzfyVar2 = zzb2;
        if (size > 0) {
            zzfyVar2 = zzfyVar;
        }
        zzip.zza(obj, j, zzfyVar2);
    }
}
