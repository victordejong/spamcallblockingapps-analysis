package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecu.class */
public final class ecu {
    /* renamed from: a */
    public static boolean m15240a(String str) {
        return "audio".equals(m15238c(str));
    }

    /* renamed from: b */
    public static boolean m15239b(String str) {
        return "video".equals(m15238c(str));
    }

    /* renamed from: c */
    private static String m15238c(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid mime type: ".concat(valueOf) : new String("Invalid mime type: "));
    }
}
