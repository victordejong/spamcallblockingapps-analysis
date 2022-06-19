package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import com.callapp.contacts.model.Constants;
import com.facebook.ads.AdError;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.audio.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/b.class */
public final class C1398b {

    /* renamed from: a */
    private static final int[] f5292a = {AdError.CACHE_ERROR_CODE, 2000, Constants.BIG_SIZE_SCREEN, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* renamed from: androidx.media2.exoplayer.external.audio.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/b$a.class */
    public static final class C1400a {

        /* renamed from: a */
        public final int f5293a;

        /* renamed from: b */
        public final int f5294b;

        /* renamed from: c */
        public final int f5295c;

        /* renamed from: d */
        public final int f5296d;

        /* renamed from: e */
        public final int f5297e;

        private C1400a(int i, int i2, int i3, int i4, int i5) {
            this.f5293a = i;
            this.f5295c = i2;
            this.f5294b = i3;
            this.f5296d = i4;
            this.f5297e = i5;
        }
    }

    private C1398b() {
    }

    /* renamed from: a */
    public static int m43021a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return m43023a(new C2017o(bArr)).f5297e;
    }

    /* renamed from: a */
    public static int m43020a(byte[] bArr, int i) {
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
    public static Format m43022a(C2018p c2018p, String str, String str2, DrmInitData drmInitData) {
        c2018p.m41531d(1);
        return Format.createAudioSampleFormat(str, "audio/ac4", null, -1, -1, 2, ((c2018p.m41534c() & 32) >> 5) == 1 ? 48000 : 44100, null, drmInitData, 0, str2);
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
    public static androidx.media2.exoplayer.external.audio.C1398b.C1400a m43023a(androidx.media2.exoplayer.external.util.C2017o r9) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.C1398b.m43023a(androidx.media2.exoplayer.external.util.o):androidx.media2.exoplayer.external.audio.b$a");
    }

    /* renamed from: a */
    public static void m43024a(int i, C2018p c2018p) {
        c2018p.m41541a(7);
        c2018p.f8131a[0] = (byte) (-84);
        c2018p.f8131a[1] = (byte) 64;
        c2018p.f8131a[2] = (byte) (-1);
        c2018p.f8131a[3] = (byte) (-1);
        c2018p.f8131a[4] = (byte) ((i >> 16) & 255);
        c2018p.f8131a[5] = (byte) ((i >> 8) & 255);
        c2018p.f8131a[6] = (byte) (i & 255);
    }
}
