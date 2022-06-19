package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsg.class */
public final class dsg {
    /* renamed from: a */
    public static boolean m8752a(String str) {
        return "audio".equals(m8750c(str));
    }

    /* renamed from: b */
    public static boolean m8751b(String str) {
        return "video".equals(m8750c(str));
    }

    /* renamed from: c */
    private static String m8750c(String str) {
        String substring;
        if (str == null) {
            substring = null;
        } else {
            int indexOf = str.indexOf(47);
            if (indexOf == -1) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid mime type: ".concat(valueOf) : new String("Invalid mime type: "));
            }
            substring = str.substring(0, indexOf);
        }
        return substring;
    }
}
