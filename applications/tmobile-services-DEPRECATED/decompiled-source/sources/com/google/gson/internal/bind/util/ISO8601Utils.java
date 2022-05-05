package com.google.gson.internal.bind.util;

import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/util/ISO8601Utils.class */
public class ISO8601Utils {

    /* renamed from: a */
    private static final TimeZone f12189a = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    private static boolean m8171a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    /* renamed from: b */
    private static int m8170b(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x03b4, code lost:
        if (r0.isEmpty() != false) goto L_0x03b7;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0355 A[Catch: IllegalArgumentException -> 0x0364, IllegalArgumentException -> 0x0364, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0369, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0369, IndexOutOfBoundsException -> 0x036e, IndexOutOfBoundsException -> 0x036e, TRY_ENTER, TRY_LEAVE, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0369, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x0090, B:29:0x009b, B:34:0x00b0, B:36:0x00bc, B:40:0x00cc, B:42:0x00d4, B:50:0x00f5, B:56:0x0113, B:58:0x011e, B:59:0x0121, B:71:0x01a9, B:73:0x01b2, B:76:0x01c1, B:81:0x01dd, B:82:0x0210, B:84:0x0212, B:87:0x0225, B:89:0x0248, B:91:0x025a, B:94:0x0267, B:96:0x02a0, B:99:0x02b4, B:100:0x02f2, B:102:0x02f6, B:103:0x02fb, B:103:0x02fb, B:104:0x02fe, B:106:0x0355, B:106:0x0355, B:107:0x0358, B:108:0x0363), top: B:121:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b2 A[Catch: IllegalArgumentException -> 0x0364, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0369, IndexOutOfBoundsException -> 0x036e, TRY_LEAVE, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0369, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x0090, B:29:0x009b, B:34:0x00b0, B:36:0x00bc, B:40:0x00cc, B:42:0x00d4, B:50:0x00f5, B:56:0x0113, B:58:0x011e, B:59:0x0121, B:71:0x01a9, B:73:0x01b2, B:76:0x01c1, B:81:0x01dd, B:82:0x0210, B:84:0x0212, B:87:0x0225, B:89:0x0248, B:91:0x025a, B:94:0x0267, B:96:0x02a0, B:99:0x02b4, B:100:0x02f2, B:102:0x02f6, B:103:0x02fb, B:103:0x02fb, B:104:0x02fe, B:106:0x0355, B:106:0x0355, B:107:0x0358, B:108:0x0363), top: B:121:0x0000 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date m8169c(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.m8169c(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: d */
    private static int m8168d(String str, int i, int i2) throws NumberFormatException {
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
