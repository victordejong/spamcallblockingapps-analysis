package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzept.class */
public abstract class zzept {
    public static zzept zzn(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzepq(cls.getSimpleName()) : new zzeps(cls.getSimpleName());
    }

    public abstract void zzio(String str);
}
