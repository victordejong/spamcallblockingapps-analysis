package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.pubmatic.sdk.video.POBVastError;
import java.util.Arrays;
import java.util.Map;
import kotlin.text.Typography;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/Code39Reader.class */
public final class Code39Reader extends OneDReader {
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    static final int ASTERISK_ENCODING = 148;
    static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, POBVastError.AD_DISPLAY_TIMEOUT, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, POBVastError.GENERAL_LINEAR_ERROR, 208, 133, 388, 196, 168, Typography.cent, 138, 42};
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    public Code39Reader() {
        this(false);
    }

    public Code39Reader(boolean z) {
        this(z, false);
    }

    public Code39Reader(boolean z, boolean z2) {
        this.usingCheckDigit = z;
        this.extendedMode = z2;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        char c;
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '$' || charAt == '%' || charAt == '/') {
                int i3 = i2 + 1;
                char charAt2 = charSequence.charAt(i3);
                if (charAt != '$') {
                    if (charAt != '%') {
                        if (charAt != '+') {
                            if (charAt == '/') {
                                if (charAt2 >= 'A' && charAt2 <= 'O') {
                                    i = charAt2 - ' ';
                                } else if (charAt2 != 'Z') {
                                    throw FormatException.getFormatInstance();
                                } else {
                                    c = ':';
                                    sb.append(c);
                                    i2 = i3;
                                }
                            }
                            c = 0;
                            sb.append(c);
                            i2 = i3;
                        } else if (charAt2 < 'A' || charAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        } else {
                            i = charAt2 + ' ';
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'E') {
                        i = charAt2 - '&';
                    } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                        i = charAt2 - 11;
                    } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                        i = charAt2 + 16;
                    } else if (charAt2 < 'P' || charAt2 > 'T') {
                        if (charAt2 != 'U') {
                            if (charAt2 == 'V') {
                                c = '@';
                            } else if (charAt2 == 'W') {
                                c = '`';
                            } else if (charAt2 != 'X' && charAt2 != 'Y' && charAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            } else {
                                c = 127;
                            }
                            sb.append(c);
                            i2 = i3;
                        }
                        c = 0;
                        sb.append(c);
                        i2 = i3;
                    } else {
                        i = charAt2 + '+';
                    }
                } else if (charAt2 < 'A' || charAt2 > 'Z') {
                    throw FormatException.getFormatInstance();
                } else {
                    i = charAt2 - '@';
                }
                c = (char) i;
                sb.append(c);
                i2 = i3;
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        return sb.toString();
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        int i = nextSet;
        boolean z = false;
        int i2 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else if (toNarrowWidePattern(iArr) == ASTERISK_ENCODING && bitArray.isRange(Math.max(0, i - ((nextSet - i) / 2)), i, false)) {
                    return new int[]{i, nextSet};
                } else {
                    i += iArr[0] + iArr[1];
                    int i3 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i3);
                    iArr[i3] = 0;
                    iArr[i2] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i2 >= iArr.length) {
                if (i != ASTERISK_ENCODING) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return '*';
            } else if (iArr[i2] == i) {
                return ALPHABET_STRING.charAt(i2);
            } else {
                i2++;
            }
        }
    }

    private static int toNarrowWidePattern(int[] iArr) {
        int i;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = Integer.MAX_VALUE;
            int length2 = iArr.length;
            int i5 = 0;
            while (i5 < length2) {
                int i6 = iArr[i5];
                int i7 = i4;
                if (i6 < i4) {
                    i7 = i4;
                    if (i6 > i3) {
                        i7 = i6;
                    }
                }
                i5++;
                i4 = i7;
            }
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                i = i11;
                if (i8 >= length) {
                    break;
                }
                int i12 = iArr[i8];
                int i13 = i9;
                int i14 = i10;
                int i15 = i;
                if (i12 > i4) {
                    i14 = i10 | (1 << ((length - 1) - i8));
                    i13 = i9 + 1;
                    i15 = i + i12;
                }
                i8++;
                i9 = i13;
                i10 = i14;
                i11 = i15;
            }
            if (i9 == 3) {
                int i16 = i9;
                int i17 = 0;
                while (i17 < length && i16 > 0) {
                    int i18 = iArr[i17];
                    int i19 = i16;
                    if (i18 > i4) {
                        i19 = i16 - 1;
                        if ((i18 << 1) >= i) {
                            return -1;
                        }
                    }
                    i17++;
                    i16 = i19;
                }
                return i10;
            } else if (i9 <= 3) {
                return -1;
            } else {
                i2 = i4;
            }
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        while (true) {
            recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern >= 0) {
                char patternToChar = patternToChar(narrowWidePattern);
                sb.append(patternToChar);
                int i2 = nextSet;
                for (int i3 : iArr) {
                    i2 += i3;
                }
                int nextSet2 = bitArray.getNextSet(i2);
                if (patternToChar == '*') {
                    sb.setLength(sb.length() - 1);
                    int i4 = 0;
                    for (int i5 : iArr) {
                        i4 += i5;
                    }
                    if (nextSet2 != size && (((nextSet2 - nextSet) - i4) << 1) < i4) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    if (this.usingCheckDigit) {
                        int length = sb.length() - 1;
                        int i6 = 0;
                        for (int i7 = 0; i7 < length; i7++) {
                            i6 += ALPHABET_STRING.indexOf(this.decodeRowResult.charAt(i7));
                        }
                        if (sb.charAt(length) != ALPHABET_STRING.charAt(i6 % 43)) {
                            throw ChecksumException.getChecksumInstance();
                        }
                        sb.setLength(length);
                    }
                    if (sb.length() == 0) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    String decodeExtended = this.extendedMode ? decodeExtended(sb) : sb.toString();
                    float f = (findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f;
                    float f2 = i;
                    return new Result(decodeExtended, null, new ResultPoint[]{new ResultPoint(f, f2), new ResultPoint(nextSet + (i4 / 2.0f), f2)}, BarcodeFormat.CODE_39);
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }
}
