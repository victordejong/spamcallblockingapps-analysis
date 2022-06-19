package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkg.class */
final class zzgkg implements zzglt {
    private static final zzgkg zza = new zzgkg();

    private zzgkg() {
    }

    public static zzgkg zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzglt
    public final zzgls zzb(Class<?> cls) {
        if (!zzgkl.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzgls) zzgkl.zzav(cls.asSubclass(zzgkl.class)).zzb(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzglt
    public final boolean zzc(Class<?> cls) {
        return zzgkl.class.isAssignableFrom(cls);
    }
}
