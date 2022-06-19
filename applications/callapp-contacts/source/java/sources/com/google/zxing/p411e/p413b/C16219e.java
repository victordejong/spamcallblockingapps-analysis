package com.google.zxing.p411e.p413b;

import com.google.zxing.WriterException;
import com.google.zxing.common.C16190a;
import com.google.zxing.p411e.p412a.C16211c;
import com.google.zxing.p411e.p412a.EnumC16209a;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Arrays;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.zxing.e.b.e */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/e.class */
final class C16219e {

    /* renamed from: a */
    private static final int[][] f57228a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b */
    private static final int[][] f57229b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c */
    private static final int[][] f57230c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, DrawableConstants.CtaButton.WIDTH_DIPS}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: d */
    private static final int[][] f57231d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private C16219e() {
    }

    /* renamed from: a */
    private static int m7618a(int i, int i2) {
        if (i2 != 0) {
            int numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i2);
            int i3 = i << (numberOfLeadingZeros - 1);
            while (true) {
                int i4 = i3;
                if (32 - Integer.numberOfLeadingZeros(i4) < numberOfLeadingZeros) {
                    return i4;
                }
                i3 = i4 ^ (i2 << ((32 - Integer.numberOfLeadingZeros(i4)) - numberOfLeadingZeros));
            }
        } else {
            throw new IllegalArgumentException("0 polynomial");
        }
    }

    /* renamed from: a */
    private static void m7617a(int i, int i2, C16215b c16215b) throws WriterException {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!m7619a(c16215b.m7636a(i4, i2))) {
                throw new WriterException();
            }
            c16215b.m7635a(i4, i2, 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x017e, code lost:
        r13 = r13 + r11;
        r14 = r8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m7616a(com.google.zxing.common.C16190a r5, int r6, com.google.zxing.p411e.p413b.C16215b r7) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p411e.p413b.C16219e.m7616a(com.google.zxing.common.a, int, com.google.zxing.e.b.b):void");
    }

    /* renamed from: a */
    public static void m7615a(C16190a c16190a, EnumC16209a enumC16209a, C16211c c16211c, int i, C16215b c16215b) throws WriterException {
        for (byte[] bArr : c16215b.f57223a) {
            Arrays.fill(bArr, (byte) -1);
        }
        int length = f57228a[0].length;
        m7612c(0, 0, c16215b);
        m7612c(c16215b.f57224b - length, 0, c16215b);
        m7612c(0, c16215b.f57224b - length, c16215b);
        m7617a(0, 7, c16215b);
        m7617a(c16215b.f57224b - 8, 7, c16215b);
        m7617a(0, c16215b.f57224b - 8, c16215b);
        m7613b(7, 0, c16215b);
        m7613b((c16215b.f57225c - 7) - 1, 0, c16215b);
        m7613b(7, c16215b.f57225c - 7, c16215b);
        if (c16215b.m7636a(8, c16215b.f57225c - 8) != 0) {
            c16215b.m7635a(8, c16215b.f57225c - 8, 1);
            if (c16211c.f57213a >= 2) {
                int[] iArr = f57230c[c16211c.f57213a - 1];
                for (int i2 : iArr) {
                    if (i2 >= 0) {
                        for (int i3 : iArr) {
                            if (i3 >= 0 && m7619a(c16215b.m7636a(i3, i2))) {
                                int i4 = 0;
                                while (true) {
                                    if (i4 < 5) {
                                        int[] iArr2 = f57229b[i4];
                                        for (int i5 = 0; i5 < 5; i5++) {
                                            c16215b.m7635a((i3 - 2) + i5, (i2 - 2) + i4, iArr2[i5]);
                                        }
                                        i4++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            int i6 = 8;
            while (true) {
                int i7 = i6;
                if (i7 >= c16215b.f57224b - 8) {
                    break;
                }
                int i8 = i7 + 1;
                int i9 = i8 % 2;
                if (m7619a(c16215b.m7636a(i7, 6))) {
                    c16215b.m7635a(i7, 6, i9);
                }
                if (m7619a(c16215b.m7636a(6, i7))) {
                    c16215b.m7635a(6, i7, i9);
                }
                i6 = i8;
            }
            C16190a c16190a2 = new C16190a();
            if (!(i >= 0 && i < 8)) {
                throw new WriterException("Invalid mask pattern");
            }
            int bits = (enumC16209a.getBits() << 3) | i;
            c16190a2.m7685a(bits, 5);
            c16190a2.m7685a(m7618a(bits, 1335), 10);
            C16190a c16190a3 = new C16190a();
            c16190a3.m7685a(21522, 15);
            if (c16190a2.f57156b != c16190a3.f57156b) {
                throw new IllegalArgumentException("Sizes don't match");
            }
            for (int i10 = 0; i10 < c16190a2.f57155a.length; i10++) {
                int[] iArr3 = c16190a2.f57155a;
                iArr3[i10] = iArr3[i10] ^ c16190a3.f57155a[i10];
            }
            if (c16190a2.f57156b != 15) {
                throw new WriterException("should not happen but we got: " + c16190a2.f57156b);
            }
            for (int i11 = 0; i11 < c16190a2.f57156b; i11++) {
                boolean m7686a = c16190a2.m7686a((c16190a2.f57156b - 1) - i11);
                int[] iArr4 = f57231d[i11];
                c16215b.m7634a(iArr4[0], iArr4[1], m7686a);
                if (i11 < 8) {
                    c16215b.m7634a((c16215b.f57224b - i11) - 1, 8, m7686a);
                } else {
                    c16215b.m7634a(8, (c16215b.f57225c - 7) + (i11 - 8), m7686a);
                }
            }
            m7614a(c16211c, c16215b);
            m7616a(c16190a, i, c16215b);
            return;
        }
        throw new WriterException();
    }

    /* renamed from: a */
    private static void m7614a(C16211c c16211c, C16215b c16215b) throws WriterException {
        if (c16211c.f57213a < 7) {
            return;
        }
        C16190a c16190a = new C16190a();
        c16190a.m7685a(c16211c.f57213a, 6);
        c16190a.m7685a(m7618a(c16211c.f57213a, 7973), 12);
        if (c16190a.f57156b != 18) {
            throw new WriterException("should not happen but we got: " + c16190a.f57156b);
        }
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean m7686a = c16190a.m7686a(i);
                i--;
                c16215b.m7634a(i2, (c16215b.f57225c - 11) + i3, m7686a);
                c16215b.m7634a((c16215b.f57225c - 11) + i3, i2, m7686a);
            }
        }
    }

    /* renamed from: a */
    private static boolean m7619a(int i) {
        return i == -1;
    }

    /* renamed from: b */
    private static void m7613b(int i, int i2, C16215b c16215b) throws WriterException {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!m7619a(c16215b.m7636a(i, i4))) {
                throw new WriterException();
            }
            c16215b.m7635a(i, i4, 0);
        }
    }

    /* renamed from: c */
    private static void m7612c(int i, int i2, C16215b c16215b) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f57228a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                c16215b.m7635a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }
}
