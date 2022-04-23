package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/or2.class */
public final class or2 {
    /* renamed from: a */
    public static boolean m6258a(String str) {
        return "audio".equals(m6256c(str));
    }

    /* renamed from: b */
    public static boolean m6257b(String str) {
        return "video".equals(m6256c(str));
    }

    /* renamed from: c */
    private static String m6256c(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Invalid mime type: ".concat(str) : new String("Invalid mime type: "));
    }
}
