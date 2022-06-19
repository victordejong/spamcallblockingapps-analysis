package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzea.class */
public final class zzea {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 1};
    private static final String[] zzc = {"", "A", "B", "C"};

    public static String zza(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String zzb(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        int i5;
        StringBuilder sb = new StringBuilder(zzfn.zzD("hvc1.%s%d.%X.%c%d", zzc[i], Integer.valueOf(i2), Integer.valueOf(i3), Character.valueOf(true != z ? 'L' : 'H'), Integer.valueOf(i4)));
        int i6 = 6;
        while (true) {
            i5 = i6;
            if (i5 <= 0) {
                break;
            }
            int i7 = i5 - 1;
            if (iArr[i7] != 0) {
                break;
            }
            i6 = i7;
        }
        for (int i8 = 0; i8 < i5; i8++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i8])));
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
