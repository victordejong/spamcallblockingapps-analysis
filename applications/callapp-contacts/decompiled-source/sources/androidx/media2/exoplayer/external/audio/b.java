package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import com.callapp.contacts.model.Constants;
import com.facebook.ads.AdError;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f2863a = {AdError.CACHE_ERROR_CODE, 2000, Constants.BIG_SIZE_SCREEN, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2864a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2865b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2866c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2867d;
        public final int e;

        private a(int i, int i2, int i3, int i4, int i5) {
            this.f2864a = i;
            this.f2866c = i2;
            this.f2865b = i3;
            this.f2867d = i4;
            this.e = i5;
        }
    }

    private b() {
    }

    public static int a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return a(new o(bArr)).e;
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

    public static Format a(p pVar, String str, String str2, DrmInitData drmInitData) {
        pVar.d(1);
        return Format.createAudioSampleFormat(str, "audio/ac4", null, -1, -1, 2, ((pVar.c() & 32) >> 5) == 1 ? 48000 : 44100, null, drmInitData, 0, str2);
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
    public static androidx.media2.exoplayer.external.audio.b.a a(androidx.media2.exoplayer.external.util.o r9) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.b.a(androidx.media2.exoplayer.external.util.o):androidx.media2.exoplayer.external.audio.b$a");
    }

    public static void a(int i, p pVar) {
        pVar.a(7);
        pVar.f4166a[0] = (byte) (-84);
        pVar.f4166a[1] = (byte) 64;
        pVar.f4166a[2] = (byte) (-1);
        pVar.f4166a[3] = (byte) (-1);
        pVar.f4166a[4] = (byte) ((i >> 16) & 255);
        pVar.f4166a[5] = (byte) ((i >> 8) & 255);
        pVar.f4166a[6] = (byte) (i & 255);
    }
}
