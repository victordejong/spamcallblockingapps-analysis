package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzif.class */
final class zzif implements zzin {
    private zzin[] zzvh;

    public zzif(zzin... zzinVarArr) {
        this.zzvh = zzinVarArr;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzin
    public final boolean zzh(Class<?> cls) {
        for (zzin zzinVar : this.zzvh) {
            if (zzinVar.zzh(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzin
    public final zzio zzi(Class<?> cls) {
        zzin[] zzinVarArr;
        for (zzin zzinVar : this.zzvh) {
            if (zzinVar.zzh(cls)) {
                return zzinVar.zzi(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
