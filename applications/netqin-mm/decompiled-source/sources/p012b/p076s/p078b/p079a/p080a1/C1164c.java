package p012b.p076s.p078b.p079a.p080a1;

import android.util.Pair;
import androidx.media2.exoplayer.external.ParserException;
/* renamed from: b.s.b.a.a1.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/c.class */
public final class C1164c {

    /* renamed from: a */
    public static final byte[] f4683a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final int[] f4684b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    public static final int[] f4685c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    public static int m34507a(C1183o oVar) {
        int a = oVar.m34385a(5);
        int i = a;
        if (a == 31) {
            i = oVar.m34385a(6) + 32;
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
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m34505a(p012b.p076s.p078b.p079a.p080a1.C1183o r4, boolean r5) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1164c.m34505a(b.s.b.a.a1.o, boolean):android.util.Pair");
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m34504a(byte[] bArr) throws ParserException {
        return m34505a(new C1183o(bArr), false);
    }

    /* renamed from: a */
    public static void m34506a(C1183o oVar, int i, int i2) {
        oVar.m34376c(1);
        if (oVar.m34374e()) {
            oVar.m34376c(14);
        }
        boolean e = oVar.m34374e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                oVar.m34376c(3);
            }
            if (e) {
                if (i == 22) {
                    oVar.m34376c(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    oVar.m34376c(3);
                }
                oVar.m34376c(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static byte[] m34508a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: a */
    public static byte[] m34503a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f4683a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, f4683a.length, i2);
        return bArr3;
    }

    /* renamed from: b */
    public static int m34501b(C1183o oVar) {
        int i;
        int a = oVar.m34385a(4);
        if (a == 15) {
            i = oVar.m34385a(24);
        } else {
            C1160a.m34520a(a < 13);
            i = f4684b[a];
        }
        return i;
    }

    /* renamed from: b */
    public static String m34502b(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
