package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/Code128Writer.class */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    /* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/Code128Writer$CType.class */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static int chooseCode(CharSequence charSequence, int i, int i2) {
        CType findCType;
        CType findCType2;
        CType findCType3 = findCType(charSequence, i);
        if (findCType3 == CType.ONE_DIGIT) {
            return 100;
        }
        if (findCType3 == CType.UNCODABLE) {
            if (i >= charSequence.length()) {
                return 100;
            }
            char charAt = charSequence.charAt(i);
            if (charAt < ' ') {
                return 101;
            }
            return (i2 != 101 || charAt >= '`') ? 100 : 101;
        } else if (i2 == 99) {
            return 99;
        } else {
            if (i2 != 100) {
                CType cType = findCType3;
                if (findCType3 == CType.FNC_1) {
                    cType = findCType(charSequence, i + 1);
                }
                return cType == CType.TWO_DIGITS ? 99 : 100;
            } else if (findCType3 == CType.FNC_1 || (findCType = findCType(charSequence, i + 2)) == CType.UNCODABLE || findCType == CType.ONE_DIGIT) {
                return 100;
            } else {
                if (findCType == CType.FNC_1) {
                    return findCType(charSequence, i + 3) == CType.TWO_DIGITS ? 99 : 100;
                }
                int i3 = i + 4;
                while (true) {
                    findCType2 = findCType(charSequence, i3);
                    if (findCType2 != CType.TWO_DIGITS) {
                        break;
                    }
                    i3 += 2;
                }
                return findCType2 == CType.ONE_DIGIT ? 100 : 99;
            }
        }
    }

    private static CType findCType(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == ESCAPE_FNC_1) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        int i2;
        int i3;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            switch (charAt) {
                case ESCAPE_FNC_1 /* 241 */:
                case ESCAPE_FNC_2 /* 242 */:
                case ESCAPE_FNC_3 /* 243 */:
                case ESCAPE_FNC_4 /* 244 */:
                    break;
                default:
                    if (charAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                    }
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i5 < length) {
            int chooseCode = chooseCode(str, i5, i7);
            int i9 = 100;
            if (chooseCode == i7) {
                switch (str.charAt(i5)) {
                    case ESCAPE_FNC_1 /* 241 */:
                        i9 = 102;
                        i3 = i5;
                        break;
                    case ESCAPE_FNC_2 /* 242 */:
                        i9 = 97;
                        i3 = i5;
                        break;
                    case ESCAPE_FNC_3 /* 243 */:
                        i9 = 96;
                        i3 = i5;
                        break;
                    case ESCAPE_FNC_4 /* 244 */:
                        i3 = i5;
                        if (i7 == 101) {
                            i9 = 101;
                            i3 = i5;
                            break;
                        }
                        break;
                    default:
                        if (i7 != 100) {
                            if (i7 != 101) {
                                i9 = Integer.parseInt(str.substring(i5, i5 + 2));
                                i3 = i5 + 1;
                                break;
                            } else {
                                int charAt2 = str.charAt(i5) - ' ';
                                i3 = i5;
                                i9 = charAt2;
                                if (charAt2 < 0) {
                                    i9 = charAt2 + 96;
                                    i3 = i5;
                                    break;
                                }
                            }
                        } else {
                            i9 = str.charAt(i5) - ' ';
                            i3 = i5;
                            break;
                        }
                        break;
                }
                i = i3 + 1;
                i2 = i7;
            } else {
                if (i7 != 0) {
                    i9 = chooseCode;
                } else if (chooseCode != 100) {
                    i9 = 103;
                    if (chooseCode != 101) {
                        i9 = 105;
                    }
                } else {
                    i9 = 104;
                }
                i2 = chooseCode;
                i = i5;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[i9]);
            int i10 = i6 + (i9 * i8);
            i5 = i;
            i6 = i10;
            i7 = i2;
            if (i != 0) {
                i8++;
                i5 = i;
                i6 = i10;
                i7 = i2;
            }
        }
        arrayList.add(Code128Reader.CODE_PATTERNS[i6 % 103]);
        arrayList.add(Code128Reader.CODE_PATTERNS[106]);
        int i11 = 0;
        for (int[] iArr : arrayList) {
            int length2 = iArr.length;
            int i12 = 0;
            int i13 = i11;
            while (true) {
                i11 = i13;
                if (i12 < length2) {
                    i13 += iArr[i12];
                    i12++;
                }
            }
        }
        boolean[] zArr = new boolean[i11];
        Iterator it = arrayList.iterator();
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (!it.hasNext()) {
                return zArr;
            }
            i14 = i15 + appendPattern(zArr, i15, (int[]) it.next(), true);
        }
    }
}
