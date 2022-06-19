package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkv.class */
final class zzkv extends zzkw {
    private zzkv() {
        super(null);
    }

    public /* synthetic */ zzkv(zzkt zzktVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final void zza(Object obj, long j) {
        ((zzkk) zzmr.zzn(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final <E> void zzb(Object obj, Object obj2, long j) {
        zzkk zzkkVar = (zzkk) zzmr.zzn(obj, j);
        zzkk<E> zzkkVar2 = (zzkk) zzmr.zzn(obj2, j);
        int size = zzkkVar.size();
        int size2 = zzkkVar2.size();
        zzkk<E> zzkkVar3 = zzkkVar;
        if (size > 0) {
            zzkkVar3 = zzkkVar;
            if (size2 > 0) {
                zzkkVar3 = zzkkVar;
                if (!zzkkVar.zza()) {
                    zzkkVar3 = zzkkVar.zze(size2 + size);
                }
                zzkkVar3.addAll(zzkkVar2);
            }
        }
        if (size <= 0) {
            zzkkVar3 = zzkkVar2;
        }
        zzmr.zzo(obj, j, zzkkVar3);
    }
}
