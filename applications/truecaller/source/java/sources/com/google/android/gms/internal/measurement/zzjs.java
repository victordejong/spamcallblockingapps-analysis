package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjs.class */
public final class zzjs implements zzla {
    private static final zzjs zza = new zzjs();

    private zzjs() {
    }

    public static zzjs zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final zzkz zzb(Class cls) {
        if (!zzjx.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzkz) zzjx.zzbu(cls.asSubclass(zzjx.class)).zzl(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final boolean zzc(Class cls) {
        return zzjx.class.isAssignableFrom(cls);
    }
}
