package androidx.media2.exoplayer.external.util;

import android.util.Pair;
import androidx.media2.exoplayer.external.ParserException;
import com.mopub.mobileads.VastVideoViewController;
/* renamed from: androidx.media2.exoplayer.external.util.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/c.class */
public final class C2000c {

    /* renamed from: a */
    private static final byte[] f8076a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f8077b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f8078c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private C2000c() {
    }

    /* renamed from: a */
    private static int m41606a(C2017o c2017o) {
        int m41548c = c2017o.m41548c(5);
        int i = m41548c;
        if (m41548c == 31) {
            i = c2017o.m41548c(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r0 == 29) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m41604a(androidx.media2.exoplayer.external.util.C2017o r4, boolean r5) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.C2000c.m41604a(androidx.media2.exoplayer.external.util.o, boolean):android.util.Pair");
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m41603a(byte[] bArr) throws ParserException {
        return m41604a(new C2017o(bArr), false);
    }

    /* renamed from: a */
    private static void m41605a(C2017o c2017o, int i, int i2) {
        c2017o.m41551b(1);
        if (c2017o.m41545e()) {
            c2017o.m41551b(14);
        }
        boolean m41545e = c2017o.m41545e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                c2017o.m41551b(3);
            }
            if (!m41545e) {
                return;
            }
            if (i == 22) {
                c2017o.m41551b(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                c2017o.m41551b(3);
            }
            c2017o.m41551b(1);
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static byte[] m41607a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: a */
    public static byte[] m41602a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f8076a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    /* renamed from: b */
    private static int m41600b(C2017o c2017o) {
        int i;
        int m41548c = c2017o.m41548c(4);
        if (m41548c == 15) {
            i = c2017o.m41548c(24);
        } else {
            C1993a.m41688a(m41548c < 13);
            i = f8077b[m41548c];
        }
        return i;
    }

    /* renamed from: b */
    public static String m41601b(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
