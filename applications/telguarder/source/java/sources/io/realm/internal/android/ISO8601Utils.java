package io.realm.internal.android;

import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/ISO8601Utils.class */
public class ISO8601Utils {
    private static final TimeZone TIMEZONE_UTC;
    private static final TimeZone TIMEZONE_Z;
    private static final String UTC_ID = "UTC";

    static {
        TimeZone timeZone = TimeZone.getTimeZone(UTC_ID);
        TIMEZONE_UTC = timeZone;
        TIMEZONE_Z = timeZone;
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0397, code lost:
        if (r0.isEmpty() != false) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0338 A[Catch: IllegalArgumentException -> 0x0347, IllegalArgumentException -> 0x0347, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IndexOutOfBoundsException -> 0x0351, IndexOutOfBoundsException -> 0x0351, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a5, B:36:0x00af, B:40:0x00bd, B:42:0x00c5, B:50:0x00e2, B:56:0x00fd, B:58:0x0108, B:59:0x010b, B:71:0x018a, B:73:0x0193, B:76:0x01a2, B:82:0x01c0, B:83:0x01f3, B:85:0x01f5, B:87:0x0209, B:89:0x0212, B:91:0x0235, B:93:0x023d, B:96:0x024a, B:98:0x0283, B:101:0x0297, B:102:0x02d5, B:104:0x02d9, B:105:0x02de, B:105:0x02de, B:106:0x02e1, B:108:0x0338, B:108:0x0338, B:109:0x033b, B:110:0x0346), top: B:123:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0193 A[Catch: IllegalArgumentException -> 0x0347, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IndexOutOfBoundsException -> 0x0351, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a5, B:36:0x00af, B:40:0x00bd, B:42:0x00c5, B:50:0x00e2, B:56:0x00fd, B:58:0x0108, B:59:0x010b, B:71:0x018a, B:73:0x0193, B:76:0x01a2, B:82:0x01c0, B:83:0x01f3, B:85:0x01f5, B:87:0x0209, B:89:0x0212, B:91:0x0235, B:93:0x023d, B:96:0x024a, B:98:0x0283, B:101:0x0297, B:102:0x02d5, B:104:0x02d9, B:105:0x02de, B:105:0x02de, B:106:0x02e1, B:108:0x0338, B:108:0x0338, B:109:0x033b, B:110:0x0346), top: B:123:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.android.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -digit;
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - digit2;
            i4++;
        }
        return -i3;
    }
}
