package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzb.class */
public final class zzb {
    public static String zza(String str) {
        char c;
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (zza(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    if (zza(charArray[i])) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    private static boolean zza(char c) {
        return c >= 'A' && c <= 'Z';
    }
}
