package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhj.class */
final class zzhj implements zzin {
    private static final zzhj zztf = new zzhj();

    private zzhj() {
    }

    public static zzhj zzgx() {
        return zztf;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzin
    public final boolean zzh(Class<?> cls) {
        return zzhi.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzin
    public final zzio zzi(Class<?> cls) {
        if (!zzhi.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzio) zzhi.zzg(cls.asSubclass(zzhi.class)).zzb(zzhi.zze.zzto, null, null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
