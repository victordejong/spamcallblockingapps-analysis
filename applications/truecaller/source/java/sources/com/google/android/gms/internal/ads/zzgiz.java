package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgiz.class */
public final class zzgiz {
    public static /* synthetic */ boolean zza(byte b) {
        return b >= 0;
    }

    public static /* synthetic */ boolean zzb(byte b) {
        return b < -32;
    }

    public static /* synthetic */ boolean zzc(byte b) {
        return b < -16;
    }

    public static /* synthetic */ void zzd(byte b, byte b2, char[] cArr, int i) throws zzggm {
        if (b < -62 || zzg(b2)) {
            throw zzggm.zzl();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static /* synthetic */ void zze(byte b, byte b2, byte b3, char[] cArr, int i) throws zzggm {
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
        throw zzggm.zzl();
    }

    public static /* synthetic */ void zzf(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzggm {
        if (zzg(b2) || (((b2 + 112) + (b << 28)) >> 30) != 0 || zzg(b3) || zzg(b4)) {
            throw zzggm.zzl();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    private static boolean zzg(byte b) {
        return b > -65;
    }
}
