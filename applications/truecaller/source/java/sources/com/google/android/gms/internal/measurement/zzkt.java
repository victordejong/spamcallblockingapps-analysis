package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkt.class */
public final class zzkt implements zzla {
    private final zzla[] zza;

    public zzkt(zzla... zzlaVarArr) {
        this.zza = zzlaVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final zzkz zzb(Class cls) {
        zzla[] zzlaVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzla zzlaVar = zzlaVarArr[i];
            if (zzlaVar.zzc(cls)) {
                return zzlaVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final boolean zzc(Class cls) {
        zzla[] zzlaVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzlaVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
