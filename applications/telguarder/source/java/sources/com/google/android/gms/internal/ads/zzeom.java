package com.google.android.gms.internal.ads;

import okio.Utf8;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeom.class */
final class zzeom {
    public static void zza(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzelo {
        if (zzh(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || zzh(b3) || zzh(b4)) {
            throw zzelo.zzbji();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    public static void zza(byte b, byte b2, byte b3, char[] cArr, int i) throws zzelo {
        if (zzh(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || zzh(b3)))) {
            throw zzelo.zzbji();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    public static void zza(byte b, byte b2, char[] cArr, int i) throws zzelo {
        if (b < -62 || zzh(b2)) {
            throw zzelo.zzbji();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static void zza(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    public static boolean zze(byte b) {
        return b >= 0;
    }

    public static boolean zzf(byte b) {
        return b < -32;
    }

    public static boolean zzg(byte b) {
        return b < -16;
    }

    private static boolean zzh(byte b) {
        return b > -65;
    }
}
