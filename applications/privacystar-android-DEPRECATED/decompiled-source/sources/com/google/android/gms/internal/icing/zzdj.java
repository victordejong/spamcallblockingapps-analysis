package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdj.class */
final class zzdj implements zzdq {
    private zzdq[] zzjq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdj(zzdq... zzdqVarArr) {
        this.zzjq = zzdqVarArr;
    }

    @Override // com.google.android.gms.internal.icing.zzdq
    public final boolean zza(Class<?> cls) {
        for (zzdq zzdqVar : this.zzjq) {
            if (zzdqVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzdq
    public final zzdp zzb(Class<?> cls) {
        zzdq[] zzdqVarArr;
        for (zzdq zzdqVar : this.zzjq) {
            if (zzdqVar.zza(cls)) {
                return zzdqVar.zzb(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
