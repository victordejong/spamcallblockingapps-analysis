package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfo.class */
public final class zzfo implements zzfw {
    private zzfw[] zza;

    public zzfo(zzfw... zzfwVarArr) {
        this.zza = zzfwVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfw
    public final boolean zza(Class<?> cls) {
        for (zzfw zzfwVar : this.zza) {
            if (zzfwVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfw
    public final zzfx zzb(Class<?> cls) {
        zzfw[] zzfwVarArr;
        for (zzfw zzfwVar : this.zza) {
            if (zzfwVar.zza(cls)) {
                return zzfwVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
