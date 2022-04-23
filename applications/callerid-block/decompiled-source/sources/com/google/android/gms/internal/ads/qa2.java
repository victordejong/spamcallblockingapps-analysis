package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qa2.class */
public final class qa2 {
    /* renamed from: a */
    public static boolean m6114a() {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, null);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: b */
    public static int m6113b() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return -1;
        }
    }
}
