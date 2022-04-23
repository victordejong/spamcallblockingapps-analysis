package com.google.zxing.e.b;

import com.google.zxing.WriterException;
import com.google.zxing.common.a;
import com.google.zxing.e.a.b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f33026a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* renamed from: com.google.zxing.e.b.c$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/c$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33027a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f33027a = iArr;
            try {
                iArr[b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33027a[b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33027a[b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33027a[b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private c() {
    }

    private static int a(int i) {
        int[] iArr = f33026a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0178, code lost:
        if (com.google.zxing.e.b.d.a(r0, r17 + 7, r17 + 11) != false) goto L_0x017b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(com.google.zxing.common.a r6, com.google.zxing.e.a.a r7, com.google.zxing.e.a.c r8, com.google.zxing.e.b.b r9) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.e.b.c.a(com.google.zxing.common.a, com.google.zxing.e.a.a, com.google.zxing.e.a.c, com.google.zxing.e.b.b):int");
    }

    private static int a(b bVar, a aVar, a aVar2, com.google.zxing.e.a.c cVar) {
        return aVar.f32979b + bVar.getCharacterCountBits(cVar) + aVar2.f32979b;
    }

    private static a a(a aVar, int i, int i2, int i3) throws WriterException {
        if (aVar.a() == i2) {
            ArrayList<a> arrayList = new ArrayList(i3);
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                if (i7 < i3) {
                    int i8 = i % i3;
                    int i9 = i3 - i8;
                    int i10 = i / i3;
                    int i11 = i2 / i3;
                    int i12 = i11 + 1;
                    int i13 = i10 - i11;
                    int i14 = (i10 + 1) - i12;
                    if (i13 != i14) {
                        throw new WriterException("EC bytes mismatch");
                    } else if (i3 != i9 + i8) {
                        throw new WriterException("RS blocks mismatch");
                    } else if (i == ((i11 + i13) * i9) + ((i12 + i14) * i8)) {
                        if (i7 < i9) {
                            iArr[0] = i11;
                            iArr2[0] = i13;
                        } else {
                            iArr[0] = i12;
                            iArr2[0] = i14;
                        }
                        int i15 = iArr[0];
                        byte[] bArr = new byte[i15];
                        aVar.a(i4 << 3, bArr, i15);
                        byte[] a2 = a(bArr, iArr2[0]);
                        arrayList.add(new a(bArr, a2));
                        i5 = Math.max(i5, i15);
                        i6 = Math.max(i6, a2.length);
                        i4 += iArr[0];
                    } else {
                        throw new WriterException("Total bytes mismatch");
                    }
                } else {
                    throw new WriterException("Block ID too large");
                }
            }
            if (i2 == i4) {
                a aVar2 = new a();
                for (int i16 = 0; i16 < i5; i16++) {
                    for (a aVar3 : arrayList) {
                        byte[] bArr2 = aVar3.f33021a;
                        if (i16 < bArr2.length) {
                            aVar2.a(bArr2[i16], 8);
                        }
                    }
                }
                for (int i17 = 0; i17 < i6; i17++) {
                    for (a aVar4 : arrayList) {
                        byte[] bArr3 = aVar4.f33022b;
                        if (i17 < bArr3.length) {
                            aVar2.a(bArr3[i17], 8);
                        }
                    }
                }
                if (i == aVar2.a()) {
                    return aVar2;
                }
                throw new WriterException("Interleaving error: " + i + " and " + aVar2.a() + " differ.");
            }
            throw new WriterException("Data bytes does not match offset");
        }
        throw new WriterException("Number of bits and data bytes does not match");
    }

    private static com.google.zxing.e.a.c a(int i, com.google.zxing.e.a.a aVar) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            com.google.zxing.e.a.c a2 = com.google.zxing.e.a.c.a(i2);
            if (a(i, a2, aVar)) {
                return a2;
            }
        }
        throw new WriterException("Data too big");
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d8 A[LOOP:1: B:65:0x0177->B:80:0x01d8, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.e.b.f a(java.lang.String r8, com.google.zxing.e.a.a r9, java.util.Map<com.google.zxing.c, ?> r10) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.e.b.c.a(java.lang.String, com.google.zxing.e.a.a, java.util.Map):com.google.zxing.e.b.f");
    }

    private static void a(int i, a aVar) throws WriterException {
        int i2 = i << 3;
        if (aVar.f32979b <= i2) {
            for (int i3 = 0; i3 < 4 && aVar.f32979b < i2; i3++) {
                aVar.a(false);
            }
            int i4 = aVar.f32979b & 7;
            if (i4 > 0) {
                while (i4 < 8) {
                    aVar.a(false);
                    i4++;
                }
            }
            int a2 = aVar.a();
            for (int i5 = 0; i5 < i - a2; i5++) {
                aVar.a((i5 & 1) == 0 ? 236 : 17, 8);
            }
            if (aVar.f32979b != i2) {
                throw new WriterException("Bits size does not equal capacity");
            }
            return;
        }
        throw new WriterException("data bits cannot fit in the QR Code" + aVar.f32979b + " > " + i2);
    }

    private static void a(b bVar, a aVar) {
        aVar.a(bVar.getBits(), 4);
    }

    private static boolean a(int i, com.google.zxing.e.a.c cVar, com.google.zxing.e.a.a aVar) {
        return cVar.f33016b - cVar.a(aVar).b() >= (i + 7) / 8;
    }

    private static boolean a(String str) {
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

    private static byte[] a(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new com.google.zxing.common.reedsolomon.c(com.google.zxing.common.reedsolomon.a.e).a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }
}
