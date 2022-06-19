package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemd.class */
final class zzemd implements zzeml {
    private zzeml[] zzisj;

    public zzemd(zzeml... zzemlVarArr) {
        this.zzisj = zzemlVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final boolean zze(Class<?> cls) {
        for (zzeml zzemlVar : this.zzisj) {
            if (zzemlVar.zze(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final zzemm zzf(Class<?> cls) {
        zzeml[] zzemlVarArr;
        for (zzeml zzemlVar : this.zzisj) {
            if (zzemlVar.zze(cls)) {
                return zzemlVar.zzf(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
