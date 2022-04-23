package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wg2.class */
public abstract class wg2 {
    /* renamed from: b */
    public static wg2 m5052b(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new qg2(cls.getSimpleName()) : new tg2(cls.getSimpleName());
    }

    /* renamed from: a */
    public abstract void m5053a(String str);
}
