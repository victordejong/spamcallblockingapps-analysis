package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecx.class */
public final class ecx {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f27645a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final float[] f27646b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    private static final Object f27647c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static int[] f27648d = new int[10];

    public static int a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f27647c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    }
                    i4++;
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f27648d;
                    if (iArr.length <= i5) {
                        f27648d = Arrays.copyOf(iArr, iArr.length << 1);
                    }
                    f27648d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f27648d[i8] - i7;
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
    /* JADX WARN: Type inference failed for: r0v23, types: [int, boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.ecw a(byte[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ecx.a(byte[], int, int):com.google.android.gms.internal.ads.ecw");
    }

    public static void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i3 < position) {
                int i4 = byteBuffer.get(i) & 255;
                if (i2 == 3) {
                    i2 = i2;
                    if (i4 == 1) {
                        i2 = i2;
                        if ((byteBuffer.get(i3) & 31) == 7) {
                            ByteBuffer duplicate = byteBuffer.duplicate();
                            duplicate.position(i - 3);
                            duplicate.limit(position);
                            byteBuffer.position(0);
                            byteBuffer.put(duplicate);
                            return;
                        }
                    }
                } else {
                    i2 = i2;
                    if (i4 == 0) {
                        i2++;
                    }
                }
                if (i4 != 0) {
                    i2 = 0;
                }
                i = i3;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static boolean a(String str, byte b2) {
        if (!"video/avc".equals(str) || (b2 & 31) != 6) {
            return "video/hevc".equals(str) && ((b2 & 126) >> 1) == 39;
        }
        return true;
    }
}
