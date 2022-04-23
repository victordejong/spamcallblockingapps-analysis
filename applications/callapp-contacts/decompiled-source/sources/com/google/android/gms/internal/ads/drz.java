package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drz.class */
public abstract class drz {
    public static drz a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new drw(cls.getSimpleName()) : new dry(cls.getSimpleName());
    }

    public abstract void a(String str);
}
