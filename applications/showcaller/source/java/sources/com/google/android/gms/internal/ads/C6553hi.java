package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hi.class */
public final class C6553hi {
    /* renamed from: a */
    public static boolean m14641a(String str) {
        return "audio".equals(m14639c(str));
    }

    /* renamed from: b */
    public static boolean m14640b(String str) {
        return "video".equals(m14639c(str));
    }

    /* renamed from: c */
    private static String m14639c(String str) {
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
