package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpj.class */
public abstract class zzgpj {
    public static zzgpj zzb(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzgpe(cls.getSimpleName()) : new zzgpg(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
