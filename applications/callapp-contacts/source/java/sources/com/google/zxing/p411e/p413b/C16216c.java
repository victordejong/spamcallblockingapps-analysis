package com.google.zxing.p411e.p413b;

import com.google.zxing.WriterException;
import com.google.zxing.common.C16190a;
import com.google.zxing.common.reedsolomon.C16193a;
import com.google.zxing.common.reedsolomon.C16195c;
import com.google.zxing.p411e.p412a.C16211c;
import com.google.zxing.p411e.p412a.EnumC16209a;
import com.google.zxing.p411e.p412a.EnumC16210b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
/* renamed from: com.google.zxing.e.b.c */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/c.class */
public final class C16216c {

    /* renamed from: a */
    private static final int[] f57226a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.zxing.e.b.c$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/c$1.class */
    public static final /* synthetic */ class C162171 {

        /* renamed from: a */
        static final /* synthetic */ int[] f57227a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16210b.values().length];
            f57227a = iArr;
            try {
                iArr[EnumC16210b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f57227a[EnumC16210b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f57227a[EnumC16210b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f57227a[EnumC16210b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private C16216c() {
    }

    /* renamed from: a */
    private static int m7633a(int i) {
        int[] iArr = f57226a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0178, code lost:
        if (com.google.zxing.p411e.p413b.C16218d.m7621a(r0, r17 + 7, r17 + 11) != false) goto L46;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m7628a(com.google.zxing.common.C16190a r6, com.google.zxing.p411e.p412a.EnumC16209a r7, com.google.zxing.p411e.p412a.C16211c r8, com.google.zxing.p411e.p413b.C16215b r9) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p411e.p413b.C16216c.m7628a(com.google.zxing.common.a, com.google.zxing.e.a.a, com.google.zxing.e.a.c, com.google.zxing.e.b.b):int");
    }

    /* renamed from: a */
    private static int m7626a(EnumC16210b enumC16210b, C16190a c16190a, C16190a c16190a2, C16211c c16211c) {
        return c16190a.f57156b + enumC16210b.getCharacterCountBits(c16211c) + c16190a2.f57156b;
    }

    /* renamed from: a */
    private static C16190a m7629a(C16190a c16190a, int i, int i2, int i3) throws WriterException {
        int i4;
        if (c16190a.m7687a() == i2) {
            ArrayList<C16214a> arrayList = new ArrayList(i3);
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i3; i8++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                if (i8 >= i3) {
                    throw new WriterException("Block ID too large");
                }
                int i9 = i % i3;
                int i10 = i3 - i9;
                int i11 = i / i3;
                int i12 = i2 / i3;
                int i13 = i12 + 1;
                int i14 = i11 - i12;
                int i15 = (i11 + 1) - i13;
                if (i14 != i15) {
                    throw new WriterException("EC bytes mismatch");
                }
                if (i3 != i10 + i9) {
                    throw new WriterException("RS blocks mismatch");
                }
                if (i != ((i12 + i14) * i10) + ((i13 + i15) * i9)) {
                    throw new WriterException("Total bytes mismatch");
                }
                if (i8 < i10) {
                    iArr[0] = i12;
                    iArr2[0] = i14;
                } else {
                    iArr[0] = i13;
                    iArr2[0] = i15;
                }
                int i16 = iArr[0];
                byte[] bArr = new byte[i16];
                c16190a.m7684a(i5 << 3, bArr, i16);
                byte[] m7623a = m7623a(bArr, iArr2[0]);
                arrayList.add(new C16214a(bArr, m7623a));
                i6 = Math.max(i6, i16);
                i7 = Math.max(i7, m7623a.length);
                i5 += iArr[0];
            }
            if (i2 != i5) {
                throw new WriterException("Data bytes does not match offset");
            }
            C16190a c16190a2 = new C16190a();
            int i17 = 0;
            while (true) {
                if (i17 < i6) {
                    for (C16214a c16214a : arrayList) {
                        byte[] bArr2 = c16214a.f57221a;
                        if (i17 < bArr2.length) {
                            c16190a2.m7685a(bArr2[i17], 8);
                        }
                    }
                    i17++;
                }
            }
            for (i4 = 0; i4 < i7; i4++) {
                for (C16214a c16214a2 : arrayList) {
                    byte[] bArr3 = c16214a2.f57222b;
                    if (i4 < bArr3.length) {
                        c16190a2.m7685a(bArr3[i4], 8);
                    }
                }
            }
            if (i == c16190a2.m7687a()) {
                return c16190a2;
            }
            throw new WriterException("Interleaving error: " + i + " and " + c16190a2.m7687a() + " differ.");
        }
        throw new WriterException("Number of bits and data bytes does not match");
    }

    /* renamed from: a */
    private static C16211c m7631a(int i, EnumC16209a enumC16209a) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            C16211c m7640a = C16211c.m7640a(i2);
            if (m7630a(i, m7640a, enumC16209a)) {
                return m7640a;
            }
        }
        throw new WriterException("Data too big");
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d8 A[LOOP:1: B:65:0x0177->B:80:0x01d8, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.p411e.p413b.C16220f m7624a(java.lang.String r8, com.google.zxing.p411e.p412a.EnumC16209a r9, java.util.Map<com.google.zxing.EnumC16165c, ?> r10) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p411e.p413b.C16216c.m7624a(java.lang.String, com.google.zxing.e.a.a, java.util.Map):com.google.zxing.e.b.f");
    }

    /* renamed from: a */
    private static void m7632a(int i, C16190a c16190a) throws WriterException {
        int i2 = i << 3;
        if (c16190a.f57156b > i2) {
            throw new WriterException("data bits cannot fit in the QR Code" + c16190a.f57156b + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && c16190a.f57156b < i2; i3++) {
            c16190a.m7682a(false);
        }
        int i4 = c16190a.f57156b & 7;
        if (i4 > 0) {
            while (i4 < 8) {
                c16190a.m7682a(false);
                i4++;
            }
        }
        int m7687a = c16190a.m7687a();
        for (int i5 = 0; i5 < i - m7687a; i5++) {
            c16190a.m7685a((i5 & 1) == 0 ? 236 : 17, 8);
        }
        if (c16190a.f57156b != i2) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    /* renamed from: a */
    private static void m7627a(EnumC16210b enumC16210b, C16190a c16190a) {
        c16190a.m7685a(enumC16210b.getBits(), 4);
    }

    /* renamed from: a */
    private static boolean m7630a(int i, C16211c c16211c, EnumC16209a enumC16209a) {
        return c16211c.f57214b - c16211c.m7639a(enumC16209a).m7637b() >= (i + 7) / 8;
    }

    /* renamed from: a */
    private static boolean m7625a(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    /* renamed from: a */
    private static byte[] m7623a(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new C16195c(C16193a.f57165e).m7667a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }
}
