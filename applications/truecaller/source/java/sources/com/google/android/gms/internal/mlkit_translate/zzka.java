package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzkc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzka.class */
public final class zzka implements zzll {
    private static final zzka zza = new zzka();

    private zzka() {
    }

    public static zzka zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzll
    public final boolean zza(Class<?> cls) {
        return zzkc.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzll
    public final zzli zzb(Class<?> cls) {
        if (!zzkc.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzli) zzkc.zza((Class<zzkc>) cls.asSubclass(zzkc.class)).zza(zzkc.zzf.zzc, (Object) null, (Object) null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
