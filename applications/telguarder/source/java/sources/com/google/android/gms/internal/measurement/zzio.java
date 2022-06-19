package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzio.class */
final class zzio implements zziv {
    private final zziv[] zza;

    public zzio(zziv... zzivVarArr) {
        this.zza = zzivVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final boolean zzb(Class<?> cls) {
        zziv[] zzivVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzivVarArr[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final zziu zzc(Class<?> cls) {
        zziv[] zzivVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zziv zzivVar = zzivVarArr[i];
            if (zzivVar.zzb(cls)) {
                return zzivVar.zzc(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
