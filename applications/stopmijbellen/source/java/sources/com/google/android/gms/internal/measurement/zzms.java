package com.google.android.gms.internal.measurement;

import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzms.class */
final class zzms {
    public static /* synthetic */ boolean zza(byte b) {
        return b >= 0;
    }

    public static /* synthetic */ void zzb(byte b, byte b2, char[] cArr, int i) throws zzkn {
        if (b < -62 || zze(b2)) {
            throw zzkn.zzf();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    public static /* synthetic */ void zzc(byte b, byte b2, byte b3, char[] cArr, int i) throws zzkn {
        if (!zze(b2)) {
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
            if (!zze(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzkn.zzf();
    }

    public static /* synthetic */ void zzd(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzkn {
        if (zze(b2) || (((b2 + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (b << 28)) >> 30) != 0 || zze(b3) || zze(b4)) {
            throw zzkn.zzf();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    private static boolean zze(byte b) {
        return b > -65;
    }
}
