package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfr.class */
public final class zzfr implements zzgy {
    private static final zzfr zza = new zzfr();

    private zzfr() {
    }

    public static zzfr zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgy
    public final boolean zza(Class<?> cls) {
        return zzfq.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgy
    public final zzgz zzb(Class<?> cls) {
        if (!zzfq.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzgz) zzfq.zza((Class<zzfq>) cls.asSubclass(zzfq.class)).zza(zzfq.zze.zzc, (Object) null, (Object) null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
