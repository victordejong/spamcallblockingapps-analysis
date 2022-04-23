package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoq.class */
public abstract class zzeoq {
    /* renamed from: a */
    public static zzeoq m12204a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzeoj(cls.getSimpleName()) : new zzeol(cls.getSimpleName());
    }

    /* renamed from: a */
    public abstract void mo12203a(String str);
}
