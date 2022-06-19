package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjy.class */
final class zzjy implements zzlg {
    private static final zzjy zza = new zzjy();

    private zzjy() {
    }

    public static zzjy zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final boolean zzb(Class<?> cls) {
        return zzkd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final zzlf zzc(Class<?> cls) {
        if (!zzkd.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzlf) zzkd.zzbx(cls.asSubclass(zzkd.class)).zzl(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
