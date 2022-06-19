package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgd.class */
final class zzgd implements zzgl {
    private zzgl[] zza;

    public zzgd(zzgl... zzglVarArr) {
        this.zza = zzglVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl
    public final boolean zza(Class<?> cls) {
        for (zzgl zzglVar : this.zza) {
            if (zzglVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl
    public final zzgm zzb(Class<?> cls) {
        zzgl[] zzglVarArr;
        for (zzgl zzglVar : this.zza) {
            if (zzglVar.zza(cls)) {
                return zzglVar.zzb(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
