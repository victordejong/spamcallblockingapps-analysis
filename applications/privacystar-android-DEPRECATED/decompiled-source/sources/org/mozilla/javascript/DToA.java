package org.mozilla.javascript;

import java.math.BigInteger;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/DToA.class */
class DToA {
    private static final int Bias = 1023;
    private static final int Bletch = 16;
    private static final int Bndry_mask = 1048575;
    static final int DTOSTR_EXPONENTIAL = 3;
    static final int DTOSTR_FIXED = 2;
    static final int DTOSTR_PRECISION = 4;
    static final int DTOSTR_STANDARD = 0;
    static final int DTOSTR_STANDARD_EXPONENTIAL = 1;
    private static final int Exp_11 = 1072693248;
    private static final int Exp_mask = 2146435072;
    private static final int Exp_mask_shifted = 2047;
    private static final int Exp_msk1 = 1048576;
    private static final long Exp_msk1L = 4503599627370496L;
    private static final int Exp_shift = 20;
    private static final int Exp_shift1 = 20;
    private static final int Exp_shiftL = 52;
    private static final int Frac_mask = 1048575;
    private static final int Frac_mask1 = 1048575;
    private static final long Frac_maskL = 4503599627370495L;
    private static final int Int_max = 14;
    private static final int Log2P = 1;

    /* renamed from: P */
    private static final int f772P = 53;
    private static final int Quick_max = 14;
    private static final int Sign_bit = Integer.MIN_VALUE;
    private static final int Ten_pmax = 22;
    private static final int n_bigtens = 5;
    private static final double[] tens = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};
    private static final double[] bigtens = {1.0E16d, 1.0E32d, 1.0E64d, 1.0E128d, 1.0E256d};
    private static final int[] dtoaModes = {0, 0, 3, 2, 2};

    DToA() {
    }

    private static char BASEDIGIT(int i) {
        return (char) (i >= 10 ? i + 87 : i + 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x0469, code lost:
        r9 = r13.charAt(r13.length() - 1);
        r13.setLength(r13.length() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0485, code lost:
        if (r9 == '9') goto L_0x048b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0490, code lost:
        if (r13.length() != 0) goto L_0x0469;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0493, code lost:
        r14 = r14 + 1;
        r9 = '0';
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0499, code lost:
        r13.append((char) (r9 + 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x04a7, code lost:
        return r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01b8, code lost:
        if (r9 > 9) goto L_0x01bb;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x07a3  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0833  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x084e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x085d  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x08d4  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x08e1  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0922  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x095c  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x096e  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x097c  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x09c8  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0a19  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0c1d  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0c61  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0c85  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0243  */
    /* JADX WARN: Type inference failed for: r0v523, types: [double] */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v21 */
    /* JADX WARN: Type inference failed for: r18v23, types: [double] */
    /* JADX WARN: Type inference failed for: r18v24, types: [double] */
    /* JADX WARN: Type inference failed for: r18v25, types: [double] */
    /* JADX WARN: Type inference failed for: r18v26 */
    /* JADX WARN: Type inference failed for: r18v31 */
    /* JADX WARN: Type inference failed for: r18v36 */
    /* JADX WARN: Type inference failed for: r18v37 */
    /* JADX WARN: Type inference failed for: r18v4, types: [double] */
    /* JADX WARN: Type inference failed for: r18v40 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r33v11, types: [double] */
    /* JADX WARN: Type inference failed for: r33v12 */
    /* JADX WARN: Type inference failed for: r33v13 */
    /* JADX WARN: Type inference failed for: r33v14 */
    /* JADX WARN: Type inference failed for: r33v15 */
    /* JADX WARN: Type inference failed for: r33v16 */
    /* JADX WARN: Type inference failed for: r33v17 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4, types: [double] */
    /* JADX WARN: Type inference failed for: r33v8, types: [double] */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r37v1 */
    /* JADX WARN: Type inference failed for: r37v3, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1, types: [double] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unknown variable types count: 11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int JS_dtoa(double r7, int r9, boolean r10, int r11, boolean[] r12, java.lang.StringBuilder r13) {
        /*
            Method dump skipped, instructions count: 3242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.DToA.JS_dtoa(double, int, boolean, int, boolean[], java.lang.StringBuilder):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02af A[LOOP:0: B:60:0x01a9->B:94:0x02af, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02a9 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r5v12, types: [int] */
    /* JADX WARN: Type inference failed for: r5v7, types: [int] */
    /* JADX WARN: Type inference failed for: r5v9, types: [int] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String JS_dtobasestr(int r5, double r6) {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.DToA.JS_dtobasestr(int, double):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r11 <= (-1.0E21d)) goto L_0x0020;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void JS_dtostr(java.lang.StringBuilder r8, int r9, int r10, double r11) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.DToA.JS_dtostr(java.lang.StringBuilder, int, int, double):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.math.BigInteger d2b(double r7, int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.DToA.d2b(double, int[], int[]):java.math.BigInteger");
    }

    private static int hi0bits(int i) {
        int i2;
        if (((-65536) & i) == 0) {
            i <<= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        int i3 = i2;
        int i4 = i;
        if (((-16777216) & i) == 0) {
            i3 = i2 + 8;
            i4 = i << 8;
        }
        int i5 = i3;
        int i6 = i4;
        if (((-268435456) & i4) == 0) {
            i5 = i3 + 4;
            i6 = i4 << 4;
        }
        int i7 = i5;
        int i8 = i6;
        if (((-1073741824) & i6) == 0) {
            i7 = i5 + 2;
            i8 = i6 << 2;
        }
        int i9 = i7;
        if ((Integer.MIN_VALUE & i8) == 0) {
            i9 = i7 + 1;
            if ((i8 & 1073741824) == 0) {
                return 32;
            }
        }
        return i9;
    }

    private static int lo0bits(int i) {
        int i2 = 0;
        if ((i & 7) == 0) {
            int i3 = i;
            if ((65535 & i) == 0) {
                i3 = i >>> 16;
                i2 = 16;
            }
            int i4 = i2;
            int i5 = i3;
            if ((i3 & 255) == 0) {
                i4 = i2 + 8;
                i5 = i3 >>> 8;
            }
            int i6 = i4;
            int i7 = i5;
            if ((i5 & 15) == 0) {
                i6 = i4 + 4;
                i7 = i5 >>> 4;
            }
            int i8 = i6;
            int i9 = i7;
            if ((i7 & 3) == 0) {
                i8 = i6 + 2;
                i9 = i7 >>> 2;
            }
            int i10 = i8;
            if ((i9 & 1) == 0) {
                i10 = i8 + 1;
                if (((i9 >>> 1) & 1) == 0) {
                    return 32;
                }
            }
            return i10;
        } else if ((i & 1) != 0) {
            return 0;
        } else {
            return (i & 2) != 0 ? 1 : 2;
        }
    }

    static BigInteger pow5mult(BigInteger bigInteger, int i) {
        return bigInteger.multiply(BigInteger.valueOf(5L).pow(i));
    }

    static boolean roundOff(StringBuilder sb) {
        int length = sb.length();
        while (length != 0) {
            int i = length - 1;
            char charAt = sb.charAt(i);
            length = i;
            if (charAt != '9') {
                sb.setCharAt(i, (char) (charAt + 1));
                sb.setLength(i + 1);
                return false;
            }
        }
        sb.setLength(0);
        return true;
    }

    static double setWord0(double d, int i) {
        return Double.longBitsToDouble((Double.doubleToLongBits(d) & BodyPartID.bodyIdMax) | (i << 32));
    }

    private static void stripTrailingZeroes(StringBuilder sb) {
        int i;
        int length = sb.length();
        while (true) {
            i = length - 1;
            if (length <= 0 || sb.charAt(i) != '0') {
                break;
            }
            length = i;
        }
        sb.setLength(i + 1);
    }

    private static void stuffBits(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    static int word0(double d) {
        return (int) (Double.doubleToLongBits(d) >> 32);
    }

    static int word1(double d) {
        return (int) Double.doubleToLongBits(d);
    }
}
