package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakv.class */
public final class zzakv {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 1};
    private static final String[] zzc = {"", "A", "B", "C"};

    public static String zza(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String zzb(zzamg zzamgVar) {
        int i;
        int i2;
        zzamgVar.zzc(24);
        int zze = zzamgVar.zze(2);
        boolean zzd = zzamgVar.zzd();
        int zze2 = zzamgVar.zze(5);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= 32) {
                break;
            }
            int i5 = i;
            if (zzamgVar.zzd()) {
                i5 = i | (1 << i3);
            }
            i3++;
            i4 = i5;
        }
        int[] iArr = new int[6];
        for (int i6 = 0; i6 < 6; i6++) {
            iArr[i6] = zzamgVar.zze(8);
        }
        StringBuilder sb = new StringBuilder(zzamq.zzv("hvc1.%s%d.%X.%c%d", zzc[zze], Integer.valueOf(zze2), Integer.valueOf(i), Character.valueOf(true != zzd ? 'L' : 'H'), Integer.valueOf(zzamgVar.zze(8))));
        int i7 = 6;
        while (true) {
            i2 = i7;
            if (i2 <= 0) {
                break;
            }
            int i8 = i2 - 1;
            if (iArr[i8] != 0) {
                break;
            }
            i7 = i8;
        }
        for (int i9 = 0; i9 < i2; i9++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i9])));
        }
        return sb.toString();
    }

    public static byte[] zzc(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(zzb, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
