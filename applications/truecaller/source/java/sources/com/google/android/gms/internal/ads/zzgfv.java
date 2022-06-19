package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfv.class */
public final class zzgfv implements zzghg {
    private static final zzgfv zza = new zzgfv();

    private zzgfv() {
    }

    public static zzgfv zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final boolean zzb(Class<?> cls) {
        return zzgga.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final zzghf zzc(Class<?> cls) {
        if (!zzgga.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzghf) zzgga.zzax(cls.asSubclass(zzgga.class)).zzb(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
