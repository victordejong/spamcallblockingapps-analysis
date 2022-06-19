package com.google.gson.internal.bind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/util/ISO8601Utils.class */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            sb.append(offset < 0 ? '-' : '+');
            padInt(sb, abs, 2);
            sb.append(':');
            padInt(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
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

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0399, code lost:
        if (r0.isEmpty() != false) goto L119;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x033a A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, NumberFormatException -> 0x034e, NumberFormatException -> 0x034e, IndexOutOfBoundsException -> 0x0353, IndexOutOfBoundsException -> 0x0353, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018e, B:74:0x0197, B:77:0x01a6, B:82:0x01c2, B:83:0x01f5, B:85:0x01f7, B:88:0x020a, B:90:0x022d, B:92:0x023f, B:95:0x024c, B:97:0x0285, B:100:0x0299, B:101:0x02d7, B:103:0x02db, B:104:0x02e0, B:104:0x02e0, B:105:0x02e3, B:107:0x033a, B:107:0x033a, B:108:0x033d, B:109:0x0348), top: B:122:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, NumberFormatException -> 0x034e, IndexOutOfBoundsException -> 0x0353, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018e, B:74:0x0197, B:77:0x01a6, B:82:0x01c2, B:83:0x01f5, B:85:0x01f7, B:88:0x020a, B:90:0x022d, B:92:0x023f, B:95:0x024c, B:97:0x0285, B:100:0x0299, B:101:0x02d7, B:103:0x02db, B:104:0x02e0, B:104:0x02e0, B:105:0x02e3, B:107:0x033a, B:107:0x033a, B:108:0x033d, B:109:0x0348), top: B:122:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
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
