package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznw.class */
public final class zznw {
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0087 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void zza(long r8, com.google.android.gms.internal.ads.zzpn r10, com.google.android.gms.internal.ads.zzkh[] r11) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznw.zza(long, com.google.android.gms.internal.ads.zzpn, com.google.android.gms.internal.ads.zzkh[]):void");
    }

    private static int zzf(zzpn zzpnVar) {
        int i = 0;
        while (zzpnVar.zziv() != 0) {
            int readUnsignedByte = zzpnVar.readUnsignedByte();
            int i2 = i + readUnsignedByte;
            i = i2;
            if (readUnsignedByte != 255) {
                return i2;
            }
        }
        return -1;
    }
}
