package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/h.class */
public final class C4822h {

    /* renamed from: a */
    private static final int[] f14610a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* renamed from: com.google.android.exoplayer2.audio.h$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/h$b.class */
    public static final class C4824b {

        /* renamed from: a */
        public final int f14611a;

        /* renamed from: b */
        public final int f14612b;

        /* renamed from: c */
        public final int f14613c;

        /* renamed from: d */
        public final int f14614d;

        /* renamed from: e */
        public final int f14615e;

        private C4824b(int i, int i2, int i3, int i4, int i5) {
            this.f14611a = i;
            this.f14613c = i2;
            this.f14612b = i3;
            this.f14614d = i4;
            this.f14615e = i5;
        }
    }

    /* renamed from: a */
    public static void m21587a(int i, C5536v c5536v) {
        c5536v.m18684I(7);
        byte[] bArr = c5536v.f17941a;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }

    /* renamed from: b */
    public static Format m21586b(C5536v c5536v, String str, String str2, DrmInitData drmInitData) {
        c5536v.m18679N(1);
        return Format.m21740o(str, "audio/ac4", null, -1, -1, 2, ((c5536v.m18653z() & 32) >> 5) == 1 ? 48000 : 44100, null, drmInitData, 0, str2);
    }

    /* renamed from: c */
    public static int m21585c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return m21584d(new C5535u(bArr)).f14615e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
        if (r0 == 11) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f2, code lost:
        if (r0 == 11) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0105, code lost:
        if (r0 == 8) goto L53;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.audio.C4822h.C4824b m21584d(com.google.android.exoplayer2.util.C5535u r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C4822h.m21584d(com.google.android.exoplayer2.util.u):com.google.android.exoplayer2.audio.h$b");
    }

    /* renamed from: e */
    public static int m21583e(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        int i4 = i2;
        if (i == 44097) {
            i4 = i2 + 2;
        }
        return i3 + i4;
    }

    /* renamed from: f */
    private static int m21582f(C5535u c5535u, int i) {
        int i2 = 0;
        while (true) {
            int m18703h = i2 + c5535u.m18703h(i);
            if (!c5535u.m18704g()) {
                return m18703h;
            }
            i2 = (m18703h + 1) << i;
        }
    }
}
