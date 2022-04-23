package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwk.class */
final class zzwk implements zzws {
    private zzws[] zzcaq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwk(zzws... zzwsVarArr) {
        this.zzcaq = zzwsVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final boolean zze(Class<?> cls) {
        for (zzws zzwsVar : this.zzcaq) {
            if (zzwsVar.zze(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwr zzf(Class<?> cls) {
        zzws[] zzwsVarArr;
        for (zzws zzwsVar : this.zzcaq) {
            if (zzwsVar.zze(cls)) {
                return zzwsVar.zzf(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
