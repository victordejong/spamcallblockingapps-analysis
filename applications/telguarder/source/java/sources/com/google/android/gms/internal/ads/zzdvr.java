package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvr.class */
public final class zzdvr {
    private static int zza(char c) {
        return (char) ((c | ' ') - 97);
    }

    public static boolean zza(CharSequence charSequence, CharSequence charSequence2) {
        int zza;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            char charAt2 = charSequence2.charAt(i);
            if (charAt != charAt2 && ((zza = zza(charAt)) >= 26 || zza != zza(charAt2))) {
                return false;
            }
        }
        return true;
    }
}
