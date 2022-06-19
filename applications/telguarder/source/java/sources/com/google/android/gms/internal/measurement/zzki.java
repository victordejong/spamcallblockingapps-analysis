package com.google.android.gms.internal.measurement;

import okio.Utf8;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzki.class */
final class zzki {
    public static /* synthetic */ boolean zza(byte b) {
        return b >= 0;
    }

    public static /* synthetic */ boolean zzb(byte b) {
        return b < -32;
    }

    public static /* synthetic */ void zzc(byte b, byte b2, char[] cArr, int i) throws zzic {
        if (b < -62 || zzg(b2)) {
            throw zzic.zzf();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static /* synthetic */ boolean zzd(byte b) {
        return b < -16;
    }

    public static /* synthetic */ void zze(byte b, byte b2, byte b3, char[] cArr, int i) throws zzic {
        if (!zzg(b2)) {
            byte b4 = b;
            if (b == -32) {
                if (b2 >= -96) {
                    b4 = -32;
                }
            }
            byte b5 = b4;
            if (b4 == -19) {
                if (b2 < -96) {
                    b5 = -19;
                }
            }
            if (!zzg(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzic.zzf();
    }

    public static /* synthetic */ void zzf(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzic {
        if (zzg(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || zzg(b3) || zzg(b4)) {
            throw zzic.zzf();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    private static boolean zzg(byte b) {
        return b > -65;
    }
}
