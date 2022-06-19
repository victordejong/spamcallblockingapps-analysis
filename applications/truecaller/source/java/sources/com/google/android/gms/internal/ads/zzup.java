package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzup.class */
public final class zzup {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzamf zzamfVar, int i, int i2) {
        zzamfVar.zzh(i);
        if (zzamfVar.zzd() < 5) {
            return -9223372036854775807L;
        }
        int zzv = zzamfVar.zzv();
        if ((8388608 & zzv) != 0 || ((zzv >> 8) & 8191) != i2 || (zzv & 32) == 0 || zzamfVar.zzn() < 7 || zzamfVar.zzd() < 7 || (zzamfVar.zzn() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        zzamfVar.zzm(bArr, 0, 6);
        byte b = bArr[0];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        long j = bArr[3] & 255;
        return ((b2 & 255) << 17) | ((b & 255) << 25) | ((b3 & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
    }
}
