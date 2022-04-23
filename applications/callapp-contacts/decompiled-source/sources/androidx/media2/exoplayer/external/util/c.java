package androidx.media2.exoplayer.external.util;

import android.util.Pair;
import androidx.media2.exoplayer.external.ParserException;
import com.mopub.mobileads.VastVideoViewController;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f4125a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f4126b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f4127c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private c() {
    }

    private static int a(o oVar) {
        int c2 = oVar.c(5);
        int i = c2;
        if (c2 == 31) {
            i = oVar.c(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r0 == 29) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(androidx.media2.exoplayer.external.util.o r4, boolean r5) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.c.a(androidx.media2.exoplayer.external.util.o, boolean):android.util.Pair");
    }

    public static Pair<Integer, Integer> a(byte[] bArr) throws ParserException {
        return a(new o(bArr), false);
    }

    private static void a(o oVar, int i, int i2) {
        oVar.b(1);
        if (oVar.e()) {
            oVar.b(14);
        }
        boolean e = oVar.e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                oVar.b(3);
            }
            if (e) {
                if (i == 22) {
                    oVar.b(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    oVar.b(3);
                }
                oVar.b(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f4125a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    private static int b(o oVar) {
        int i;
        int c2 = oVar.c(4);
        if (c2 == 15) {
            i = oVar.c(24);
        } else {
            a.a(c2 < 13);
            i = f4126b[c2];
        }
        return i;
    }

    public static String b(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
