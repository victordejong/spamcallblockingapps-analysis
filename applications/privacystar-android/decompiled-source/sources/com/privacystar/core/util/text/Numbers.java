package com.privacystar.core.util.text;

import com.privacystar.core.util.MathUtil;
import org.apache.commons.cli.HelpFormatter;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/text/Numbers.class */
public class Numbers {
    public static int ceiling(float f) {
        return MathUtil.almostEqual(f % 1.0f, 0.0f) ? (int) f : (int) (f + 1.0f);
    }

    public static int fastParseInt(String str) {
        int i;
        int length = str.length();
        int i2 = 0;
        char charAt = str.charAt(0);
        if (charAt == '-') {
            i = 1;
        } else {
            i2 = '0' - charAt;
            i = -1;
        }
        for (int i3 = 1; i3 < length; i3++) {
            i2 = ((i2 * 10) + 48) - str.charAt(i3);
        }
        return i * i2;
    }

    public static int fastParseInt(String str, int i, int i2) {
        int i3;
        int i4;
        char charAt = str.charAt(i);
        if (charAt == '-') {
            i4 = 0;
            i3 = 1;
        } else {
            i4 = '0' - charAt;
            i3 = -1;
        }
        while (true) {
            i++;
            if (i >= i2) {
                return i3 * i4;
            }
            i4 = ((i4 * 10) + 48) - str.charAt(i);
        }
    }

    public static int getHundredsDigit(int i) {
        return (int) ((i % 100) * 0.1d);
    }

    public static int getTenThousandsDigit(int i) {
        return (int) ((i % 10000) * 0.001d);
    }

    public static int getTensDigit(int i) {
        return i % 10;
    }

    public static int getThousandsDigit(int i) {
        return (int) ((i % 1000) * 0.01d);
    }

    public static short getUnsignedByteValue(byte b) {
        return (short) (b & 255);
    }

    public static long getUnsignedIntValue(int i) {
        return i & BodyPartID.bodyIdMax;
    }

    public static int getUnsignedShortValue(short s) {
        return s & 65535;
    }

    public static byte safeByteValue(int i) {
        byte b = (byte) i;
        if (b == i) {
            return b;
        }
        throw new ArithmeticException("There is no equivalent byte value of " + i);
    }

    public static int safeIntValueOf(float f) {
        int i = (int) f;
        if (MathUtil.almostEqual(i, f)) {
            return i;
        }
        throw new ArithmeticException("There is no equivalent integer value of " + f);
    }

    public static int safeIntValueOf(long j) {
        int i = (int) j;
        if (i == j) {
            return i;
        }
        throw new ArithmeticException("There is no equivalent integer value of " + j);
    }

    public static final boolean safeParseBoolean(String str) {
        return "true".equalsIgnoreCase(str);
    }

    public static double safeParseDouble(String str) {
        if (Text.isNull(str)) {
            return 0.0d;
        }
        String trim = Text.trim(str);
        String str2 = trim;
        if (trim.endsWith(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            str2 = HelpFormatter.DEFAULT_OPT_PREFIX + Text.substringBefore(trim, HelpFormatter.DEFAULT_OPT_PREFIX);
        }
        try {
            return Double.parseDouble(str2);
        } catch (NumberFormatException e) {
            return 0.0d;
        }
    }

    public static final int safeParseInt(String str) {
        if (Text.isNull(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public static short safeShortValue(int i) {
        short s = (short) i;
        if (s == i) {
            return s;
        }
        throw new ArithmeticException("There is no equivalent byte value of " + i);
    }

    private static boolean shouldInsertComma(int i, int i2) {
        return i2 > 0 && (i - i2) % 3 == 0;
    }

    public static String toRoundedString(double d, int i) {
        String d2 = Double.toString(d);
        int indexOf = d2.indexOf(46);
        int i2 = indexOf + i + 1;
        String str = d2;
        if (Text.isValidCharIndex(d2, i2)) {
            str = d2;
            if (Integer.parseInt(d2.substring(i2, i2 + 1)) >= 5) {
                str = Double.toString(d + (1.0d / Math.pow(10.0d, i)));
            }
        }
        int length = (str.length() - 1) - indexOf;
        if (length >= i) {
            return str.substring(0, i2);
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        while (length < i) {
            stringBuffer.append('0');
            length++;
        }
        return stringBuffer.toString();
    }

    public static String toStringWithCommas(double d, int i) {
        String stringWithCommas = toStringWithCommas((int) d);
        String roundedString = toRoundedString(d, i);
        String substring = roundedString.substring(roundedString.indexOf(46));
        return stringWithCommas + substring;
    }

    public static String toStringWithCommas(int i) {
        String num = Integer.toString(i);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < num.length(); i2++) {
            if (shouldInsertComma(num.length(), i2)) {
                sb.append(',');
            }
            sb.append(num.charAt(i2));
        }
        return sb.toString();
    }
}
