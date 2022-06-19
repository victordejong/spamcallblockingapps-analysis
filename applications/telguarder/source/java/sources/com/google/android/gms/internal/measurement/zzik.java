package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzik.class */
final class zzik extends zzil {
    private zzik() {
        super(null);
    }

    public /* synthetic */ zzik(zzii zziiVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final void zza(Object obj, long j) {
        ((zzhz) zzkh.zzn(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final <E> void zzb(Object obj, Object obj2, long j) {
        zzhz zzhzVar = (zzhz) zzkh.zzn(obj, j);
        zzhz<E> zzhzVar2 = (zzhz) zzkh.zzn(obj2, j);
        int size = zzhzVar.size();
        int size2 = zzhzVar2.size();
        zzhz<E> zzhzVar3 = zzhzVar;
        if (size > 0) {
            zzhzVar3 = zzhzVar;
            if (size2 > 0) {
                zzhzVar3 = zzhzVar;
                if (!zzhzVar.zza()) {
                    zzhzVar3 = zzhzVar.zze(size2 + size);
                }
                zzhzVar3.addAll(zzhzVar2);
            }
        }
        if (size <= 0) {
            zzhzVar3 = zzhzVar2;
        }
        zzkh.zzo(obj, j, zzhzVar3);
    }
}
