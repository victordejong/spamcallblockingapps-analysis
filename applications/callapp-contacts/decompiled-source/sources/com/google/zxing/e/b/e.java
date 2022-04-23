package com.google.zxing.e.b;

import com.google.zxing.WriterException;
import com.google.zxing.common.a;
import com.google.zxing.e.a.c;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/b/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int[][] f33028a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: b  reason: collision with root package name */
    private static final int[][] f33029b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c  reason: collision with root package name */
    private static final int[][] f33030c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, DrawableConstants.CtaButton.WIDTH_DIPS}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: d  reason: collision with root package name */
    private static final int[][] f33031d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private e() {
    }

    private static int a(int i, int i2) {
        if (i2 != 0) {
            int numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i2);
            int i3 = i << (numberOfLeadingZeros - 1);
            while (32 - Integer.numberOfLeadingZeros(i3) >= numberOfLeadingZeros) {
                i3 ^= i2 << ((32 - Integer.numberOfLeadingZeros(i3)) - numberOfLeadingZeros);
            }
            return i3;
        }
        throw new IllegalArgumentException("0 polynomial");
    }

    private static void a(int i, int i2, b bVar) throws WriterException {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (a(bVar.a(i4, i2))) {
                bVar.a(i4, i2, 0);
            } else {
                throw new WriterException();
            }
        }
    }

    private static void a(a aVar, int i, b bVar) throws WriterException {
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = bVar.f33024b - 1;
        int i7 = bVar.f33025c - 1;
        int i8 = 0;
        int i9 = -1;
        while (i6 > 0) {
            int i10 = i6;
            int i11 = i7;
            int i12 = i8;
            if (i6 == 6) {
                i10 = i6 - 1;
                i12 = i8;
                i11 = i7;
            }
            while (i11 >= 0 && i11 < bVar.f33025c) {
                int i13 = i12;
                for (int i14 = 0; i14 < 2; i14++) {
                    int i15 = i10 - i14;
                    i13 = i13;
                    if (a(bVar.a(i15, i11))) {
                        if (i13 < aVar.f32979b) {
                            z = aVar.a(i13);
                            i13++;
                        } else {
                            z = false;
                        }
                        boolean z2 = z;
                        if (i != -1) {
                            switch (i) {
                                case 0:
                                    i3 = i11 + i15;
                                    i2 = i3 & 1;
                                    break;
                                case 1:
                                    i2 = i11 & 1;
                                    break;
                                case 2:
                                    i2 = i15 % 3;
                                    break;
                                case 3:
                                    i2 = (i11 + i15) % 3;
                                    break;
                                case 4:
                                    i4 = i11 / 2;
                                    i5 = i15 / 3;
                                    i3 = i4 + i5;
                                    i2 = i3 & 1;
                                    break;
                                case 5:
                                    int i16 = i11 * i15;
                                    i2 = (i16 % 3) + (i16 & 1);
                                    break;
                                case 6:
                                    int i17 = i11 * i15;
                                    i2 = ((i17 & 1) + (i17 % 3)) & 1;
                                    break;
                                case 7:
                                    i4 = (i11 * i15) % 3;
                                    i5 = (i11 + i15) & 1;
                                    i3 = i4 + i5;
                                    i2 = i3 & 1;
                                    break;
                                default:
                                    throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i)));
                            }
                            z2 = z;
                            if (i2 == 0) {
                                z2 = !z;
                            }
                        }
                        bVar.a(i15, i11, z2);
                    }
                }
                i11 += i9;
                i12 = i13;
            }
            i9 = -i9;
            i7 = i11 + i9;
            i6 = i10 - 2;
            i8 = i12;
        }
        if (i8 != aVar.f32979b) {
            throw new WriterException("Not all bits consumed: " + i8 + '/' + aVar.f32979b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(a aVar, com.google.zxing.e.a.a aVar2, c cVar, int i, b bVar) throws WriterException {
        for (byte[] bArr : bVar.f33023a) {
            Arrays.fill(bArr, (byte) -1);
        }
        int length = f33028a[0].length;
        c(0, 0, bVar);
        c(bVar.f33024b - length, 0, bVar);
        c(0, bVar.f33024b - length, bVar);
        a(0, 7, bVar);
        a(bVar.f33024b - 8, 7, bVar);
        a(0, bVar.f33024b - 8, bVar);
        b(7, 0, bVar);
        b((bVar.f33025c - 7) - 1, 0, bVar);
        b(7, bVar.f33025c - 7, bVar);
        if (bVar.a(8, bVar.f33025c - 8) != 0) {
            bVar.a(8, bVar.f33025c - 8, 1);
            if (cVar.f33015a >= 2) {
                int[] iArr = f33030c[cVar.f33015a - 1];
                for (int i2 : iArr) {
                    if (i2 >= 0) {
                        for (int i3 : iArr) {
                            if (i3 >= 0 && a(bVar.a(i3, i2))) {
                                int i4 = 0;
                                while (true) {
                                    if (i4 < 5) {
                                        int[] iArr2 = f33029b[i4];
                                        for (int i5 = 0; i5 < 5; i5++) {
                                            bVar.a((i3 - 2) + i5, (i2 - 2) + i4, iArr2[i5]);
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
            while (i6 < bVar.f33024b - 8) {
                int i7 = i6 + 1;
                int i8 = i7 % 2;
                if (a(bVar.a(i6, 6))) {
                    bVar.a(i6, 6, i8);
                }
                if (a(bVar.a(6, i6))) {
                    bVar.a(6, i6, i8);
                }
                i6 = i7;
            }
            a aVar3 = new a();
            if (i >= 0 && i < 8) {
                int bits = (aVar2.getBits() << 3) | i;
                aVar3.a(bits, 5);
                aVar3.a(a(bits, 1335), 10);
                a aVar4 = new a();
                aVar4.a(21522, 15);
                if (aVar3.f32979b == aVar4.f32979b) {
                    for (int i9 = 0; i9 < aVar3.f32978a.length; i9++) {
                        int[] iArr3 = aVar3.f32978a;
                        iArr3[i9] = iArr3[i9] ^ aVar4.f32978a[i9];
                    }
                    if (aVar3.f32979b == 15) {
                        for (int i10 = 0; i10 < aVar3.f32979b; i10++) {
                            boolean a2 = aVar3.a((aVar3.f32979b - 1) - i10);
                            int[] iArr4 = f33031d[i10];
                            bVar.a(iArr4[0], iArr4[1], a2);
                            if (i10 < 8) {
                                bVar.a((bVar.f33024b - i10) - 1, 8, a2);
                            } else {
                                bVar.a(8, (bVar.f33025c - 7) + (i10 - 8), a2);
                            }
                        }
                        a(cVar, bVar);
                        a(aVar, i, bVar);
                        return;
                    }
                    throw new WriterException("should not happen but we got: " + aVar3.f32979b);
                }
                throw new IllegalArgumentException("Sizes don't match");
            }
            throw new WriterException("Invalid mask pattern");
        }
        throw new WriterException();
    }

    private static void a(c cVar, b bVar) throws WriterException {
        if (cVar.f33015a >= 7) {
            a aVar = new a();
            aVar.a(cVar.f33015a, 6);
            aVar.a(a(cVar.f33015a, 7973), 12);
            if (aVar.f32979b == 18) {
                int i = 17;
                for (int i2 = 0; i2 < 6; i2++) {
                    for (int i3 = 0; i3 < 3; i3++) {
                        boolean a2 = aVar.a(i);
                        i--;
                        bVar.a(i2, (bVar.f33025c - 11) + i3, a2);
                        bVar.a((bVar.f33025c - 11) + i3, i2, a2);
                    }
                }
                return;
            }
            throw new WriterException("should not happen but we got: " + aVar.f32979b);
        }
    }

    private static boolean a(int i) {
        return i == -1;
    }

    private static void b(int i, int i2, b bVar) throws WriterException {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (a(bVar.a(i, i4))) {
                bVar.a(i, i4, 0);
            } else {
                throw new WriterException();
            }
        }
    }

    private static void c(int i, int i2, b bVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f33028a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                bVar.a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }
}
