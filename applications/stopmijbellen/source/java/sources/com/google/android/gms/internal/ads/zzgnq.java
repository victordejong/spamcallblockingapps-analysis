package com.google.android.gms.internal.ads;

import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnq.class */
final class zzgnq {
    public static /* bridge */ /* synthetic */ void zza(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (zzg(b2) || (((b2 + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b << 28)) >> 30) != 0 || zzg(b3) || zzg(b4)) {
            throw zzgkx.zzd();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    public static /* bridge */ /* synthetic */ void zzb(byte b, byte b2, byte b3, char[] cArr, int i) {
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
        throw zzgkx.zzd();
    }

    public static /* bridge */ /* synthetic */ void zzc(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || zzg(b2)) {
            throw zzgkx.zzd();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static /* bridge */ /* synthetic */ boolean zzd(byte b) {
        return b >= 0;
    }

    public static /* bridge */ /* synthetic */ boolean zze(byte b) {
        return b < -16;
    }

    public static /* bridge */ /* synthetic */ boolean zzf(byte b) {
        return b < -32;
    }

    private static boolean zzg(byte b) {
        return b > -65;
    }
}
