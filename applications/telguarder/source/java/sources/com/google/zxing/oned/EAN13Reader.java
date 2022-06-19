package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/EAN13Reader.class */
public final class EAN13Reader extends UPCEANReader {
    static final int[] FIRST_DIGIT_ENCODINGS = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    private final int[] decodeMiddleCounters = new int[4];

    private static void determineFirstDigit(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == FIRST_DIGIT_ENCODINGS[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int i;
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i2 = iArr[1];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= 6 || i2 >= size) {
                break;
            }
            int decodeDigit = decodeDigit(bitArray, iArr2, i2, L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            for (int i5 : iArr2) {
                i2 += i5;
            }
            int i6 = i;
            if (decodeDigit >= 10) {
                i6 = i | (1 << (5 - i3));
            }
            i3++;
            i4 = i6;
        }
        determineFirstDigit(sb, i);
        int i7 = findGuardPattern(bitArray, i2, true, MIDDLE_PATTERN)[1];
        for (int i8 = 0; i8 < 6 && i7 < size; i8++) {
            sb.append((char) (decodeDigit(bitArray, iArr2, i7, L_PATTERNS) + 48));
            for (int i9 : iArr2) {
                i7 += i9;
            }
        }
        return i7;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.EAN_13;
    }
}
