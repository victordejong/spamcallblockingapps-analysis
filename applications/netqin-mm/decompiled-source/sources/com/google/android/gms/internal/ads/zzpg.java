package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpg.class */
public final class zzpg {
    /* renamed from: a */
    public static boolean m11675a(String str) {
        return "audio".equals(m11673c(str));
    }

    /* renamed from: b */
    public static boolean m11674b(String str) {
        return "video".equals(m11673c(str));
    }

    /* renamed from: c */
    public static String m11673c(String str) {
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
