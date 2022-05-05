package io.realm.internal.android;

import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/android/ISO8601Utils.class */
public class ISO8601Utils {
    public static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");
    public static final TimeZone TIMEZONE_Z = TIMEZONE_UTC;
    public static final String UTC_ID = "UTC";

    public static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x038d, code lost:
        if (r0.isEmpty() != false) goto L_0x0390;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x032e A[Catch: IllegalArgumentException -> 0x033d, IllegalArgumentException -> 0x033d, NumberFormatException -> 0x0342, NumberFormatException -> 0x0342, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0347, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0347, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0347, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a6, B:36:0x00b2, B:40:0x00c2, B:42:0x00ca, B:50:0x00e7, B:56:0x0101, B:60:0x0112, B:72:0x0186, B:74:0x018e, B:77:0x019c, B:82:0x01b8, B:83:0x01eb, B:85:0x01ed, B:87:0x01ff, B:89:0x0208, B:91:0x022b, B:93:0x0233, B:96:0x0240, B:98:0x0279, B:101:0x028d, B:102:0x02cb, B:104:0x02cf, B:105:0x02d4, B:105:0x02d4, B:106:0x02d7, B:108:0x032e, B:108:0x032e, B:109:0x0331, B:110:0x033c), top: B:123:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x018e A[Catch: IllegalArgumentException -> 0x033d, NumberFormatException -> 0x0342, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0347, TRY_LEAVE, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0347, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a6, B:36:0x00b2, B:40:0x00c2, B:42:0x00ca, B:50:0x00e7, B:56:0x0101, B:60:0x0112, B:72:0x0186, B:74:0x018e, B:77:0x019c, B:82:0x01b8, B:83:0x01eb, B:85:0x01ed, B:87:0x01ff, B:89:0x0208, B:91:0x022b, B:93:0x0233, B:96:0x0240, B:98:0x0279, B:101:0x028d, B:102:0x02cb, B:104:0x02cf, B:105:0x02d4, B:105:0x02d4, B:106:0x02d7, B:108:0x032e, B:108:0x032e, B:109:0x0331, B:110:0x033c), top: B:123:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1024
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.android.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit >= 0) {
                i3 = -digit;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 >= 0) {
                i3 = (i3 * 10) - digit2;
                i4++;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        }
        return -i3;
    }
}
