package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/ITFReader.class */
public final class ITFReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.38f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.5f;

    /* renamed from: N */
    private static final int f188N = 1;

    /* renamed from: W */
    private static final int f189W = 3;

    /* renamed from: w */
    private static final int f190w = 2;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {6, 8, 10, 12, 14};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[][] END_PATTERN_REVERSED = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    private static final int[][] PATTERNS = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private static int decodeDigit(int[] iArr) throws NotFoundException {
        float f;
        int length = PATTERNS.length;
        float f2 = 0.38f;
        int i = 0;
        int i2 = -1;
        while (i < length) {
            float patternMatchVariance = patternMatchVariance(iArr, PATTERNS[i], 0.5f);
            if (patternMatchVariance < f2) {
                i2 = i;
                f = patternMatchVariance;
            } else {
                f = f2;
                if (patternMatchVariance == f2) {
                    i2 = -1;
                    f = f2;
                }
            }
            i++;
            f2 = f;
        }
        if (i2 >= 0) {
            return i2 % 10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Finally extract failed */
    private int[] decodeEnd(BitArray bitArray) throws NotFoundException {
        int[] iArr;
        bitArray.reverse();
        try {
            int skipWhiteSpace = skipWhiteSpace(bitArray);
            try {
                iArr = findGuardPattern(bitArray, skipWhiteSpace, END_PATTERN_REVERSED[0]);
            } catch (NotFoundException e) {
                iArr = findGuardPattern(bitArray, skipWhiteSpace, END_PATTERN_REVERSED[1]);
            }
            validateQuietZone(bitArray, iArr[0]);
            int i = iArr[0];
            iArr[0] = bitArray.getSize() - iArr[1];
            iArr[1] = bitArray.getSize() - i;
            bitArray.reverse();
            return iArr;
        } catch (Throwable th) {
            bitArray.reverse();
            throw th;
        }
    }

    private static void decodeMiddle(BitArray bitArray, int i, int i2, StringBuilder sb) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            recordPattern(bitArray, i, iArr);
            int i3 = 0;
            for (int i4 = 0; i4 < 5; i4++) {
                int i5 = i4 * 2;
                iArr2[i4] = iArr[i5];
                iArr3[i4] = iArr[i5 + 1];
            }
            sb.append((char) (decodeDigit(iArr2) + 48));
            sb.append((char) (decodeDigit(iArr3) + 48));
            int i6 = i;
            while (true) {
                i = i6;
                if (i3 < 10) {
                    i6 += iArr[i3];
                    i3++;
                }
            }
        }
    }

    private int[] decodeStart(BitArray bitArray) throws NotFoundException {
        int[] findGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        this.narrowLineWidth = (findGuardPattern[1] - findGuardPattern[0]) / 4;
        validateQuietZone(bitArray, findGuardPattern[0]);
        return findGuardPattern;
    }

    private static int[] findGuardPattern(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        boolean z = false;
        int i2 = 0;
        int i3 = i;
        for (int i4 = i; i4 < size; i4++) {
            if (bitArray.get(i4) != z) {
                iArr2[i2] = iArr2[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else if (patternMatchVariance(iArr2, iArr, 0.5f) < 0.38f) {
                    return new int[]{i3, i4};
                } else {
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = i2 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i2] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z = !z;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int skipWhiteSpace(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void validateQuietZone(BitArray bitArray, int i) throws NotFoundException {
        int i2 = this.narrowLineWidth * 10;
        if (i2 >= i) {
            i2 = i;
        }
        while (true) {
            i--;
            if (i2 <= 0 || i < 0 || bitArray.get(i)) {
                break;
            }
            i2--;
        }
        if (i2 == 0) {
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws FormatException, NotFoundException {
        int i2;
        boolean z;
        int[] decodeStart = decodeStart(bitArray);
        int[] decodeEnd = decodeEnd(bitArray);
        StringBuilder sb = new StringBuilder(20);
        decodeMiddle(bitArray, decodeStart[1], decodeEnd[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = sb2.length();
        int length2 = iArr2.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i3 >= length2) {
                z = false;
                break;
            }
            int i5 = iArr2[i3];
            if (length == i5) {
                z = true;
                break;
            }
            int i6 = i2;
            if (i5 > i2) {
                i6 = i5;
            }
            i3++;
            i4 = i6;
        }
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (length > i2) {
                z2 = true;
            }
        }
        if (z2) {
            float f = decodeStart[1];
            float f2 = i;
            return new Result(sb2, null, new ResultPoint[]{new ResultPoint(f, f2), new ResultPoint(decodeEnd[0], f2)}, BarcodeFormat.ITF);
        }
        throw FormatException.getFormatInstance();
    }
}
