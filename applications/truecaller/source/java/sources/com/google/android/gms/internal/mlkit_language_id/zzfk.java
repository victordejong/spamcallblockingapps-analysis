package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfk.class */
public final class zzfk extends zzfj {
    /* JADX INFO: Access modifiers changed from: private */
    public zzfk() {
        super();
    }

    private static <E> zzew<E> zzb(Object obj, long j) {
        return (zzew) zzhn.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    public final void zza(Object obj, long j) {
        zzb(obj, j).mo38716b_();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzew zzb = zzb(obj, j);
        zzew<E> zzb2 = zzb(obj2, j);
        int size = zzb.size();
        int size2 = zzb2.size();
        zzew<E> zzewVar = zzb;
        if (size > 0) {
            zzewVar = zzb;
            if (size2 > 0) {
                zzewVar = zzb;
                if (!zzb.zza()) {
                    zzewVar = zzb.zzb(size2 + size);
                }
                zzewVar.addAll(zzb2);
            }
        }
        zzew<E> zzewVar2 = zzb2;
        if (size > 0) {
            zzewVar2 = zzewVar;
        }
        zzhn.zza(obj, j, zzewVar2);
    }
}
