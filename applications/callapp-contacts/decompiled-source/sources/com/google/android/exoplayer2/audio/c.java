package com.google.android.exoplayer2.audio;

import com.callapp.contacts.model.Constants;
import com.facebook.ads.AdError;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f20737a = {AdError.CACHE_ERROR_CODE, 2000, Constants.BIG_SIZE_SCREEN, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f20738a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20739b;

        /* renamed from: c  reason: collision with root package name */
        public final int f20740c;

        /* renamed from: d  reason: collision with root package name */
        public final int f20741d;
        public final int e;

        private a(int i, int i2, int i3, int i4, int i5) {
            this.f20738a = i;
            this.f20740c = i2;
            this.f20739b = i3;
            this.f20741d = i4;
            this.e = i5;
        }
    }

    private c() {
    }

    public static int a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return a(new t(bArr)).e;
    }

    public static int a(byte[] bArr, int i) {
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

    public static Format a(u uVar, String str, String str2, DrmInitData drmInitData) {
        uVar.e(1);
        int i = ((uVar.c() & 32) >> 5) == 1 ? 48000 : 44100;
        Format.a aVar = new Format.a();
        aVar.f20603a = str;
        aVar.k = "audio/ac4";
        aVar.x = 2;
        aVar.y = i;
        aVar.n = drmInitData;
        aVar.f20605c = str2;
        return aVar.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f8, code lost:
        if (r0 == 11) goto L_0x0128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010c, code lost:
        if (r0 == 11) goto L_0x0128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x011f, code lost:
        if (r0 == 8) goto L_0x0128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.audio.c.a a(com.google.android.exoplayer2.util.t r9) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.c.a(com.google.android.exoplayer2.util.t):com.google.android.exoplayer2.audio.c$a");
    }

    public static void a(int i, u uVar) {
        uVar.a(7);
        byte[] bArr = uVar.f22335a;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }
}
