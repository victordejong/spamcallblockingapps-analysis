package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzfd.class */
public abstract class zzfd {
    public static zzfd zza(char c) {
        return new zzff('.');
    }

    public static String zzd(char c) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        char c2 = c;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        zzft.zza(i, length, "index");
        while (i < length) {
            if (zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean zzb(char c);
}
