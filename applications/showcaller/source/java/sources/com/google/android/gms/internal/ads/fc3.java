package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fc3.class */
public final class fc3 {
    /* renamed from: a */
    public static boolean m15282a() {
        return "The Android Project".equals(System.getProperty("java.vendor"));
    }

    /* renamed from: b */
    public static int m15281b() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return -1;
        }
    }
}
