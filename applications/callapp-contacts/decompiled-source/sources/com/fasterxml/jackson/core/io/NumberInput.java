package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/NumberInput.class */
public final class NumberInput {
    static final String MAX_LONG_STR = "9223372036854775807";
    static final String MIN_LONG_STR_NO_SIGN = "9223372036854775808";

    private static NumberFormatException _badBD(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    public static boolean inLongRange(String str, boolean z) {
        String str2 = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            int charAt = str.charAt(i) - str2.charAt(i);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static boolean inLongRange(char[] cArr, int i, int i2, boolean z) {
        String str = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static double parseAsDouble(String str, double d2) {
        if (str == null) {
            return d2;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return d2;
        }
        try {
            return parseDouble(trim);
        } catch (NumberFormatException e) {
            return d2;
        }
    }

    public static int parseAsInt(String str, int i) {
        String trim;
        int length;
        int i2;
        String str2;
        if (!(str == null || (length = (trim = str.trim()).length()) == 0)) {
            int i3 = 0;
            char charAt = trim.charAt(0);
            if (charAt == '+') {
                str2 = trim.substring(1);
                i2 = str2.length();
            } else {
                i2 = length;
                str2 = trim;
                if (charAt == '-') {
                    i3 = 1;
                    str2 = trim;
                    i2 = length;
                }
            }
            while (i3 < i2) {
                char charAt2 = str2.charAt(i3);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (int) parseDouble(str2);
                    } catch (NumberFormatException e) {
                        return i;
                    }
                } else {
                    i3++;
                }
            }
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                return i;
            }
        }
        return i;
    }

    public static long parseAsLong(String str, long j) {
        String trim;
        int length;
        int i;
        String str2;
        if (!(str == null || (length = (trim = str.trim()).length()) == 0)) {
            int i2 = 0;
            char charAt = trim.charAt(0);
            if (charAt == '+') {
                str2 = trim.substring(1);
                i = str2.length();
            } else {
                i = length;
                str2 = trim;
                if (charAt == '-') {
                    i2 = 1;
                    str2 = trim;
                    i = length;
                }
            }
            while (i2 < i) {
                char charAt2 = str2.charAt(i2);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (long) parseDouble(str2);
                    } catch (NumberFormatException e) {
                        return j;
                    }
                } else {
                    i2++;
                }
            }
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException e2) {
                return j;
            }
        }
        return j;
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e) {
            throw _badBD(str);
        }
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw _badBD(new String(cArr, i, i2));
        }
    }

    public static double parseDouble(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static int parseInt(String str) {
        boolean z = false;
        char charAt = str.charAt(0);
        int length = str.length();
        int i = 1;
        if (charAt == '-') {
            z = true;
        }
        if (z) {
            if (length == 1 || length > 10) {
                return Integer.parseInt(str);
            }
            charAt = str.charAt(1);
            i = 2;
        } else if (length > 9) {
            return Integer.parseInt(str);
        }
        if (charAt > '9' || charAt < '0') {
            return Integer.parseInt(str);
        }
        int i2 = charAt - '0';
        int i3 = i2;
        if (i < length) {
            int i4 = i + 1;
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return Integer.parseInt(str);
            }
            int i5 = (i2 * 10) + (charAt2 - '0');
            i3 = i5;
            if (i4 < length) {
                int i6 = i4 + 1;
                char charAt3 = str.charAt(i4);
                if (charAt3 > '9' || charAt3 < '0') {
                    return Integer.parseInt(str);
                }
                int i7 = (i5 * 10) + (charAt3 - '0');
                i3 = i7;
                if (i6 < length) {
                    i3 = i7;
                    while (true) {
                        int i8 = i6 + 1;
                        char charAt4 = str.charAt(i6);
                        if (charAt4 > '9' || charAt4 < '0') {
                            break;
                        }
                        i3 = (i3 * 10) + (charAt4 - '0');
                        if (i8 >= length) {
                            break;
                        }
                        i6 = i8;
                    }
                    return Integer.parseInt(str);
                }
            }
        }
        return z ? -i3 : i3;
    }

    public static int parseInt(char[] cArr, int i, int i2) {
        int i3 = cArr[(i + i2) - 1] - '0';
        int i4 = i3;
        int i5 = i;
        int i6 = i3;
        int i7 = i;
        int i8 = i3;
        int i9 = i;
        int i10 = i3;
        int i11 = i;
        int i12 = i3;
        int i13 = i;
        int i14 = i3;
        int i15 = i;
        int i16 = i3;
        int i17 = i;
        switch (i2) {
            case 9:
                i4 = i3 + ((cArr[i] - '0') * 100000000);
                i5 = i + 1;
            case 8:
                i6 = i4 + ((cArr[i5] - '0') * 10000000);
                i7 = i5 + 1;
            case 7:
                i8 = i6 + ((cArr[i7] - '0') * 1000000);
                i9 = i7 + 1;
            case 6:
                i10 = i8 + ((cArr[i9] - '0') * 100000);
                i11 = i9 + 1;
            case 5:
                i12 = i10 + ((cArr[i11] - '0') * 10000);
                i13 = i11 + 1;
            case 4:
                i14 = i12 + ((cArr[i13] - '0') * 1000);
                i15 = i13 + 1;
            case 3:
                i16 = i14 + ((cArr[i15] - '0') * 100);
                i17 = i15 + 1;
            case 2:
                i3 = i16 + ((cArr[i17] - '0') * 10);
                break;
        }
        return i3;
    }

    public static long parseLong(String str) {
        return str.length() <= 9 ? parseInt(str) : Long.parseLong(str);
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return (parseInt(cArr, i, i3) * 1000000000) + parseInt(cArr, i + i3, 9);
    }
}
