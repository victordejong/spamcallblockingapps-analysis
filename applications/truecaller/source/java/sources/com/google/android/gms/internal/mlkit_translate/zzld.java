package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzld.class */
public final class zzld implements zzll {
    private zzll[] zza;

    public zzld(zzll... zzllVarArr) {
        this.zza = zzllVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzll
    public final boolean zza(Class<?> cls) {
        for (zzll zzllVar : this.zza) {
            if (zzllVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzll
    public final zzli zzb(Class<?> cls) {
        zzll[] zzllVarArr;
        for (zzll zzllVar : this.zza) {
            if (zzllVar.zza(cls)) {
                return zzllVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
