package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaff.class */
public final class zzaff {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzfd zzfdVar, int i, int i2) {
        zzfdVar.zzF(i);
        if (zzfdVar.zza() < 5) {
            return -9223372036854775807L;
        }
        int zze = zzfdVar.zze();
        if ((8388608 & zze) != 0 || ((zze >> 8) & 8191) != i2 || (zze & 32) == 0 || zzfdVar.zzk() < 7 || zzfdVar.zza() < 7 || (zzfdVar.zzk() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        zzfdVar.zzB(bArr, 0, 6);
        byte b = bArr[0];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        long j = bArr[3] & 255;
        return ((b2 & 255) << 17) | ((b & 255) << 25) | ((b3 & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
    }
}
