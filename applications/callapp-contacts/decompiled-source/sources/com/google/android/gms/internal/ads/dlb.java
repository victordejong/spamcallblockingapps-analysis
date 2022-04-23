package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlb.class */
public final class dlb {
    public static boolean a() {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, null);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }

    public static int b() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return -1;
        }
    }
}
