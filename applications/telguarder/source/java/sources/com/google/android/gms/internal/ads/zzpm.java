package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpm.class */
public final class zzpm {
    public static final byte[] zzbjt = {0, 0, 0, 1};
    private static final float[] zzbkf = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzbkg = new Object();
    private static int[] zzbkh = new int[10];

    public static boolean zza(String str, byte b) {
        if (!"video/avc".equals(str) || (b & 31) != 6) {
            return "video/hevc".equals(str) && ((b & 126) >> 1) == 39;
        }
        return true;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (zzbkg) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    } else if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = zzbkh;
                    if (iArr.length <= i5) {
                        zzbkh = Arrays.copyOf(iArr, iArr.length << 1);
                    }
                    zzbkh[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = zzbkh[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = (byte) 0;
                i6 = i11 + 1;
                bArr[i11] = (byte) 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i2 - i6);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0278  */
    /* JADX WARN: Type inference failed for: r0v23, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzpl zzd(byte[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpm.zzd(byte[], int, int):com.google.android.gms.internal.ads.zzpl");
    }

    public static void zzp(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= position) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                i = i3;
                if (i5 == 1) {
                    i = i3;
                    if ((byteBuffer.get(i4) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                }
            } else {
                i = i3;
                if (i5 == 0) {
                    i = i3 + 1;
                }
            }
            i3 = i;
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }
}
