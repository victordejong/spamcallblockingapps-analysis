package p131c.p161d.p170b.p188c.p203g1;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
/* renamed from: c.d.b.c.g1.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/h.class */
public final class C2884h {

    /* renamed from: a */
    public static final byte[] f10474a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final int[] f10475b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    public static final int[] f10476c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    public static int m28697a(C2903u uVar) {
        int a = uVar.m28565a(5);
        int i = a;
        if (a == 31) {
            i = uVar.m28565a(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r0 == 29) goto L_0x0023;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m28695a(p131c.p161d.p170b.p188c.p203g1.C2903u r4, boolean r5) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2884h.m28695a(c.d.b.c.g1.u, boolean):android.util.Pair");
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m28694a(byte[] bArr) throws ParserException {
        return m28695a(new C2903u(bArr), false);
    }

    /* renamed from: a */
    public static void m28696a(C2903u uVar, int i, int i2) {
        uVar.m28556c(1);
        if (uVar.m28554e()) {
            uVar.m28556c(14);
        }
        boolean e = uVar.m28554e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                uVar.m28556c(3);
            }
            if (e) {
                if (i == 22) {
                    uVar.m28556c(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    uVar.m28556c(3);
                }
                uVar.m28556c(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static byte[] m28698a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: a */
    public static byte[] m28693a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f10474a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, f10474a.length, i2);
        return bArr3;
    }

    /* renamed from: b */
    public static int m28691b(C2903u uVar) {
        int i;
        int a = uVar.m28565a(4);
        if (a == 15) {
            i = uVar.m28565a(24);
        } else {
            C2877e.m28734a(a < 13);
            i = f10475b[a];
        }
        return i;
    }

    /* renamed from: b */
    public static Pair<Integer, Integer> m28690b(byte[] bArr) {
        C2904v vVar = new C2904v(bArr);
        vVar.m28538e(9);
        int r = vVar.m28524r();
        vVar.m28538e(20);
        return Pair.create(Integer.valueOf(vVar.m28520v()), Integer.valueOf(r));
    }

    /* renamed from: b */
    public static String m28692b(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
