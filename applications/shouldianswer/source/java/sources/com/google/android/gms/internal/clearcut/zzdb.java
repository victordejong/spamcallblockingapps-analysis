package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdb.class */
final class zzdb extends zzcy {
    /* JADX INFO: Access modifiers changed from: private */
    public zzdb() {
        super();
    }

    private static <E> zzcn<E> zzc(Object obj, long j) {
        return (zzcn) zzfd.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void zza(Object obj, long j) {
        zzc(obj, j).zzv();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzcn zzc = zzc(obj, j);
        zzcn<E> zzc2 = zzc(obj2, j);
        int size = zzc.size();
        int size2 = zzc2.size();
        zzcn<E> zzcnVar = zzc;
        if (size > 0) {
            zzcnVar = zzc;
            if (size2 > 0) {
                zzcnVar = zzc;
                if (!zzc.zzu()) {
                    zzcnVar = zzc.zzi(size2 + size);
                }
                zzcnVar.addAll(zzc2);
            }
        }
        zzcn<E> zzcnVar2 = zzc2;
        if (size > 0) {
            zzcnVar2 = zzcnVar;
        }
        zzfd.zza(obj, j, zzcnVar2);
    }
}
