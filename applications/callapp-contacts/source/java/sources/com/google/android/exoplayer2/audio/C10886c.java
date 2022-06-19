package com.google.android.exoplayer2.audio;

import com.callapp.contacts.model.Constants;
import com.facebook.ads.AdError;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/c.class */
public final class C10886c {

    /* renamed from: a */
    private static final int[] f35131a = {AdError.CACHE_ERROR_CODE, 2000, Constants.BIG_SIZE_SCREEN, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* renamed from: com.google.android.exoplayer2.audio.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/c$a.class */
    public static final class C10888a {

        /* renamed from: a */
        public final int f35132a;

        /* renamed from: b */
        public final int f35133b;

        /* renamed from: c */
        public final int f35134c;

        /* renamed from: d */
        public final int f35135d;

        /* renamed from: e */
        public final int f35136e;

        private C10888a(int i, int i2, int i3, int i4, int i5) {
            this.f35132a = i;
            this.f35134c = i2;
            this.f35133b = i3;
            this.f35135d = i4;
            this.f35136e = i5;
        }
    }

    private C10886c() {
    }

    /* renamed from: a */
    public static int m22072a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return m22074a(new C11627t(bArr)).f35136e;
    }

    /* renamed from: a */
    public static int m22071a(byte[] bArr, int i) {
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

    /* renamed from: a */
    public static Format m22073a(C11628u c11628u, String str, String str2, DrmInitData drmInitData) {
        c11628u.m19799e(1);
        int i = ((c11628u.m19804c() & 32) >> 5) == 1 ? 48000 : 44100;
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = "audio/ac4";
        c10828a.f34805x = 2;
        c10828a.f34806y = i;
        c10828a.f34795n = drmInitData;
        c10828a.f34784c = str2;
        return c10828a.m22321a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f8, code lost:
        if (r0 == 11) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010c, code lost:
        if (r0 == 11) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011f, code lost:
        if (r0 == 8) goto L57;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.audio.C10886c.C10888a m22074a(com.google.android.exoplayer2.util.C11627t r9) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10886c.m22074a(com.google.android.exoplayer2.util.t):com.google.android.exoplayer2.audio.c$a");
    }

    /* renamed from: a */
    public static void m22075a(int i, C11628u c11628u) {
        c11628u.m19811a(7);
        byte[] bArr = c11628u.f38733a;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }
}
