package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sq3.class */
public final class sq3 {

    /* renamed from: a */
    private static final int[] f29618a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    private static final int[] f29619b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    private static final int[] f29620c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: d */
    public static final /* synthetic */ int f29621d = 0;

    /* renamed from: a */
    public static C7021u4 m10924a(byte[] bArr, String str, String str2, zzn zznVar) {
        C6657ka c6657ka;
        int i;
        int i2 = 0;
        if (bArr[0] == Byte.MAX_VALUE) {
            c6657ka = new C6657ka(bArr, bArr.length);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b = copyOf[0];
            if (b == -2 || b == -1) {
                for (int i3 = 0; i3 < copyOf.length - 1; i3 += 2) {
                    byte b2 = copyOf[i3];
                    copyOf[i3] = copyOf[i];
                    copyOf[i3 + 1] = b2;
                }
            }
            int length = copyOf.length;
            c6657ka = new C6657ka(copyOf, length);
            if (copyOf[0] == 31) {
                C6657ka c6657ka2 = new C6657ka(copyOf, length);
                while (c6657ka2.m13953b() >= 16) {
                    c6657ka2.m13949f(2);
                    c6657ka.m13943l(c6657ka2.m13947h(14), 14);
                }
            }
            c6657ka.m13954a(copyOf, copyOf.length);
        }
        c6657ka.m13949f(60);
        int i4 = f29618a[c6657ka.m13947h(6)];
        int i5 = f29619b[c6657ka.m13947h(4)];
        int m13947h = c6657ka.m13947h(5);
        int i6 = m13947h >= 29 ? -1 : (f29620c[m13947h] * 1000) / 2;
        c6657ka.m13949f(10);
        if (c6657ka.m13947h(2) > 0) {
            i2 = 1;
        }
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d(str);
        c6947s4.m11129n("audio/vnd.dts");
        c6947s4.m11134i(i6);
        c6947s4.m11175B(i4 + i2);
        c6947s4.m11174C(i5);
        c6947s4.m11126q(null);
        c6947s4.m11138g(str2);
        return c6947s4.m11168I();
    }
}
