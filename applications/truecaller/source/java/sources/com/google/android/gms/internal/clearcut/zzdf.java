package com.google.android.gms.internal.clearcut;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzdf.class */
public final class zzdf implements zzdn {
    private zzdn[] zzma;

    public zzdf(zzdn... zzdnVarArr) {
        this.zzma = zzdnVarArr;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final boolean zza(Class<?> cls) {
        for (zzdn zzdnVar : this.zzma) {
            if (zzdnVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final zzdm zzb(Class<?> cls) {
        zzdn[] zzdnVarArr;
        for (zzdn zzdnVar : this.zzma) {
            if (zzdnVar.zza(cls)) {
                return zzdnVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
