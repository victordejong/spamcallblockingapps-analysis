package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
/* loaded from: classes-dex2jar.jar:com/google/zxing/aztec/encoder/Encoder.class */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bitMatrix.set(i5, i4);
                    bitMatrix.set(i5, i6);
                    bitMatrix.set(i4, i5);
                    bitMatrix.set(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bitMatrix.set(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.set(i8, i7);
        bitMatrix.set(i7, i8);
        int i9 = i + i2;
        bitMatrix.set(i9, i7);
        bitMatrix.set(i9, i8);
        bitMatrix.set(i9, i9 - 1);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = i / 2;
        if (!z) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = (i2 - 5) + i3 + (i3 / 5);
                if (bitArray.get(i3)) {
                    bitMatrix.set(i4, i2 - 7);
                }
                if (bitArray.get(i3 + 10)) {
                    bitMatrix.set(i2 + 7, i4);
                }
                if (bitArray.get(29 - i3)) {
                    bitMatrix.set(i4, i2 + 7);
                }
                if (bitArray.get(39 - i3)) {
                    bitMatrix.set(i2 - 7, i4);
                }
            }
            return;
        }
        for (int i5 = 0; i5 < 7; i5++) {
            int i6 = (i2 - 3) + i5;
            if (bitArray.get(i5)) {
                bitMatrix.set(i6, i2 - 5);
            }
            if (bitArray.get(i5 + 7)) {
                bitMatrix.set(i2 + 5, i6);
            }
            if (bitArray.get(20 - i5)) {
                bitMatrix.set(i6, i2 + 5);
            }
            if (bitArray.get(27 - i5)) {
                bitMatrix.set(i2 - 5, i6);
            }
        }
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0130, code lost:
        if (r16 != com.google.zxing.aztec.encoder.Encoder.WORD_SIZE[r21]) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.aztec.encoder.AztecCode encode(byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.Encoder.encode(byte[], int, int):com.google.zxing.aztec.encoder.AztecCode");
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] bitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(bitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : bitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    public static BitArray generateModeMessage(boolean z, int i, int i2) {
        int i3;
        BitArray bitArray = new BitArray();
        int i4 = i - 1;
        if (z) {
            bitArray.appendBits(i4, 2);
            bitArray.appendBits(i2 - 1, 6);
            i3 = 28;
        } else {
            bitArray.appendBits(i4, 5);
            bitArray.appendBits(i2 - 1, 11);
            i3 = 40;
        }
        return generateCheckWords(bitArray, i3, 4);
    }

    private static GenericGF getGF(int i) {
        if (i != 4) {
            if (i == 6) {
                return GenericGF.AZTEC_DATA_6;
            }
            if (i == 8) {
                return GenericGF.AZTEC_DATA_8;
            }
            if (i == 10) {
                return GenericGF.AZTEC_DATA_10;
            }
            if (i != 12) {
                throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
            }
            return GenericGF.AZTEC_DATA_12;
        }
        return GenericGF.AZTEC_PARAM;
    }

    public static BitArray stuffBits(BitArray bitArray, int i) {
        int i2;
        int i3;
        int i4;
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i5 = (1 << i) - 2;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < size) {
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    i2 = i9;
                    if (i8 >= i) {
                        break;
                    }
                    int i10 = i7 + i8;
                    if (i10 < size) {
                        i4 = i2;
                        if (!bitArray.get(i10)) {
                            i8++;
                            i9 = i4;
                        }
                    }
                    i4 = i2 | (1 << ((i - 1) - i8));
                    i8++;
                    i9 = i4;
                }
                int i11 = i2 & i5;
                if (i11 == i5) {
                    i3 = i11;
                } else if (i11 == 0) {
                    i3 = i2 | 1;
                } else {
                    bitArray2.appendBits(i2, i);
                    i6 = i7 + i;
                }
                bitArray2.appendBits(i3, i);
                i7--;
                i6 = i7 + i;
            } else {
                return bitArray2;
            }
        }
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }
}
