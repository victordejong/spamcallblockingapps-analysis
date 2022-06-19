package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpj.class */
public final class zzpj {
    public static boolean zzbc(String str) {
        return "audio".equals(zzbe(str));
    }

    public static boolean zzbd(String str) {
        return "video".equals(zzbe(str));
    }

    private static String zzbe(String str) {
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
