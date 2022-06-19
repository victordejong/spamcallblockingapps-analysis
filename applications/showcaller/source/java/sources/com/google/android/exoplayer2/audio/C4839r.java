package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.C5535u;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.audio.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/r.class */
public final class C4839r {

    /* renamed from: a */
    private static final int[] f14679a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    private static final int[] f14680b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    private static final int[] f14681c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m21516a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C4839r.m21516a(byte[]):int");
    }

    /* renamed from: b */
    private static C5535u m21515b(byte[] bArr) {
        int i;
        if (bArr[0] == Byte.MAX_VALUE) {
            return new C5535u(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (m21514c(copyOf)) {
            for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                byte b = copyOf[i2];
                copyOf[i2] = copyOf[i];
                copyOf[i2 + 1] = b;
            }
        }
        C5535u c5535u = new C5535u(copyOf);
        if (copyOf[0] == 31) {
            C5535u c5535u2 = new C5535u(copyOf);
            while (c5535u2.m18709b() >= 16) {
                c5535u2.m18694q(2);
                c5535u.m18705f(c5535u2.m18703h(14), 14);
            }
        }
        c5535u.m18698m(copyOf);
        return c5535u;
    }

    /* renamed from: c */
    private static boolean m21514c(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -2 || bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static boolean m21513d(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* renamed from: e */
    public static int m21512e(ByteBuffer byteBuffer) {
        int i;
        int i2;
        byte b;
        byte b2;
        int position = byteBuffer.position();
        byte b3 = byteBuffer.get(position);
        if (b3 != -2) {
            if (b3 == -1) {
                i = (byteBuffer.get(position + 4) & 7) << 4;
                b2 = byteBuffer.get(position + 7);
            } else if (b3 != 31) {
                i = (byteBuffer.get(position + 4) & 1) << 6;
                b = byteBuffer.get(position + 5);
            } else {
                i = (byteBuffer.get(position + 5) & 7) << 4;
                b2 = byteBuffer.get(position + 6);
            }
            i2 = b2 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(position + 5) & 1) << 6;
        b = byteBuffer.get(position + 4);
        i2 = b & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    /* renamed from: f */
    public static int m21511f(byte[] bArr) {
        int i;
        int i2;
        byte b;
        byte b2;
        byte b3 = bArr[0];
        if (b3 != -2) {
            if (b3 == -1) {
                i2 = (bArr[4] & 7) << 4;
                b2 = bArr[7];
            } else if (b3 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b = bArr[5];
            } else {
                i2 = (bArr[5] & 7) << 4;
                b2 = bArr[6];
            }
            i = b2 & 60;
            return (((i >> 2) | i2) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b = bArr[4];
        i = b & 252;
        return (((i >> 2) | i2) + 1) * 32;
    }

    /* renamed from: g */
    public static Format m21510g(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        C5535u m21515b = m21515b(bArr);
        m21515b.m18694q(60);
        int i = f14679a[m21515b.m18703h(6)];
        int i2 = f14680b[m21515b.m18703h(4)];
        int m18703h = m21515b.m18703h(5);
        int[] iArr = f14681c;
        int i3 = m18703h >= iArr.length ? -1 : (iArr[m18703h] * 1000) / 2;
        m21515b.m18694q(10);
        return Format.m21740o(str, "audio/vnd.dts", null, i3, -1, i + (m21515b.m18703h(2) > 0 ? 1 : 0), i2, null, drmInitData, 0, str2);
    }
}
