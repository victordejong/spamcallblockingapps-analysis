package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfg.class */
final class zzfg implements zzfo {
    private zzfo[] zzsc;

    public zzfg(zzfo... zzfoVarArr) {
        this.zzsc = zzfoVarArr;
    }

    public final boolean zza(Class<?> cls) {
        for (zzfo zzfoVar : this.zzsc) {
            if (zzfoVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    public final zzfp zzb(Class<?> cls) {
        zzfo[] zzfoVarArr;
        for (zzfo zzfoVar : this.zzsc) {
            if (zzfoVar.zza(cls)) {
                return zzfoVar.zzb(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
