package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhl.class */
public abstract class dhl {
    /* renamed from: a */
    public static dhl m9456a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new dhi(cls.getSimpleName()) : new dhk(cls.getSimpleName());
    }

    /* renamed from: a */
    public abstract void mo9455a(String str);
}
