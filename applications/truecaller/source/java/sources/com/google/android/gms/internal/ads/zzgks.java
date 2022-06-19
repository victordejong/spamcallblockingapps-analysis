package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgks.class */
public abstract class zzgks {
    public static zzgks zzb(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzgkn(cls.getSimpleName()) : new zzgkp(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
