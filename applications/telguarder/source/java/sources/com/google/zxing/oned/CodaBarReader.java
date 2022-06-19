package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/CodaBarReader.class */
public final class CodaBarReader extends OneDReader {
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] STARTEND_ENCODING = {'A', 'B', 'C', 'D'};
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private int[] counters = new int[80];
    private int counterLength = 0;

    public static boolean arrayContains(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private void counterAppend(int i) {
        int[] iArr = this.counters;
        int i2 = this.counterLength;
        iArr[i2] = i;
        int i3 = i2 + 1;
        this.counterLength = i3;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[i3 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.counters = iArr2;
        }
    }

    private int findStartPattern() throws NotFoundException {
        for (int i = 1; i < this.counterLength; i += 2) {
            int narrowWidePattern = toNarrowWidePattern(i);
            if (narrowWidePattern != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.counters[i3];
                }
                if (i == 1 || this.counters[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray bitArray) throws NotFoundException {
        int i = 0;
        this.counterLength = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset < size) {
            boolean z = true;
            while (nextUnset < size) {
                if (bitArray.get(nextUnset) != z) {
                    i++;
                } else {
                    counterAppend(i);
                    z = !z;
                    i = 1;
                }
                nextUnset++;
            }
            counterAppend(i);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int toNarrowWidePattern(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = i + 7;
        if (i5 >= this.counterLength) {
            return -1;
        }
        int[] iArr = this.counters;
        int i6 = i;
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        while (true) {
            i2 = i8;
            if (i6 >= i5) {
                break;
            }
            int i9 = iArr[i6];
            int i10 = i7;
            if (i9 < i7) {
                i10 = i9;
            }
            int i11 = i2;
            if (i9 > i2) {
                i11 = i9;
            }
            i6 += 2;
            i7 = i10;
            i8 = i11;
        }
        int i12 = (i7 + i2) / 2;
        int i13 = i + 1;
        int i14 = 0;
        int i15 = Integer.MAX_VALUE;
        while (i13 < i5) {
            int i16 = iArr[i13];
            int i17 = i15;
            if (i16 < i15) {
                i17 = i16;
            }
            int i18 = i14;
            if (i16 > i14) {
                i18 = i16;
            }
            i13 += 2;
            i15 = i17;
            i14 = i18;
        }
        int i19 = (i15 + i14) / 2;
        int i20 = 128;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            i3 = i22;
            i4 = 0;
            if (i21 < 7) {
                i20 >>= 1;
                int i23 = i3;
                if (iArr[i + i21] > ((i21 & 1) == 0 ? i12 : i19)) {
                    i23 = i3 | i20;
                }
                i21++;
                i22 = i23;
            }
        }
        while (true) {
            int[] iArr2 = CHARACTER_ENCODINGS;
            if (i4 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i4] == i3) {
                return i4;
            }
            i4++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x015a, code lost:
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void validatePattern(int r8) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarReader.validatePattern(int):void");
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        int i2;
        Arrays.fill(this.counters, 0);
        setCounters(bitArray);
        int findStartPattern = findStartPattern();
        this.decodeRowResult.setLength(0);
        int i3 = findStartPattern;
        do {
            int narrowWidePattern = toNarrowWidePattern(i3);
            if (narrowWidePattern == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.decodeRowResult.append((char) narrowWidePattern);
            i2 = i3 + 8;
            if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                break;
            }
            i3 = i2;
        } while (i2 < this.counterLength);
        int i4 = i2 - 1;
        int i5 = this.counters[i4];
        int i6 = 0;
        for (int i7 = -8; i7 < -1; i7++) {
            i6 += this.counters[i2 + i7];
        }
        if (i2 >= this.counterLength || i5 >= i6 / 2) {
            validatePattern(findStartPattern);
            for (int i8 = 0; i8 < this.decodeRowResult.length(); i8++) {
                StringBuilder sb = this.decodeRowResult;
                sb.setCharAt(i8, ALPHABET[sb.charAt(i8)]);
            }
            char charAt = this.decodeRowResult.charAt(0);
            char[] cArr = STARTEND_ENCODING;
            if (!arrayContains(cArr, charAt)) {
                throw NotFoundException.getNotFoundInstance();
            }
            StringBuilder sb2 = this.decodeRowResult;
            if (!arrayContains(cArr, sb2.charAt(sb2.length() - 1))) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (this.decodeRowResult.length() <= 3) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
                StringBuilder sb3 = this.decodeRowResult;
                sb3.deleteCharAt(sb3.length() - 1);
                this.decodeRowResult.deleteCharAt(0);
            }
            int i9 = 0;
            for (int i10 = 0; i10 < findStartPattern; i10++) {
                i9 += this.counters[i10];
            }
            float f = i9;
            while (findStartPattern < i4) {
                i9 += this.counters[findStartPattern];
                findStartPattern++;
            }
            float f2 = i;
            return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(f, f2), new ResultPoint(i9, f2)}, BarcodeFormat.CODABAR);
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
