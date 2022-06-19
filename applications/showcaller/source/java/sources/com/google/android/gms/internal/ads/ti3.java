package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ti3.class */
public abstract class ti3 {
    /* renamed from: b */
    public static ti3 m10651b(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new oi3(cls.getSimpleName()) : new qi3(cls.getSimpleName());
    }

    /* renamed from: a */
    public abstract void mo10652a(String str);
}
