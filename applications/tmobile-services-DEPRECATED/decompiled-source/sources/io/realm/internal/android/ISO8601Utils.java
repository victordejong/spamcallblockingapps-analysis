package io.realm.internal.android;

import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/ISO8601Utils.class */
public class ISO8601Utils {

    /* renamed from: a */
    private static final TimeZone f20203a;

    /* renamed from: b */
    private static final TimeZone f20204b;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        f20203a = timeZone;
        f20204b = timeZone;
    }

    /* renamed from: a */
    private static boolean m2590a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    /* renamed from: b */
    private static int m2589b(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x0397, code lost:
        if (r0.isEmpty() != false) goto L_0x039a;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0338 A[Catch: IllegalArgumentException -> 0x0347, IllegalArgumentException -> 0x0347, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IndexOutOfBoundsException -> 0x0351, IndexOutOfBoundsException -> 0x0351, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018a, B:74:0x0193, B:77:0x01a2, B:83:0x01c0, B:84:0x01f3, B:86:0x01f5, B:88:0x0209, B:90:0x0212, B:92:0x0235, B:94:0x023d, B:97:0x024a, B:99:0x0283, B:102:0x0297, B:103:0x02d5, B:105:0x02d9, B:106:0x02de, B:106:0x02de, B:107:0x02e1, B:109:0x0338, B:109:0x0338, B:110:0x033b, B:111:0x0346), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0193 A[Catch: IllegalArgumentException -> 0x0347, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, IndexOutOfBoundsException -> 0x0351, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x034c, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018a, B:74:0x0193, B:77:0x01a2, B:83:0x01c0, B:84:0x01f3, B:86:0x01f5, B:88:0x0209, B:90:0x0212, B:92:0x0235, B:94:0x023d, B:97:0x024a, B:99:0x0283, B:102:0x0297, B:103:0x02d5, B:105:0x02d9, B:106:0x02de, B:106:0x02de, B:107:0x02e1, B:109:0x0338, B:109:0x0338, B:110:0x033b, B:111:0x0346), top: B:124:0x0000 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date m2588c(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.android.ISO8601Utils.m2588c(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: d */
    private static int m2587d(String str, int i, int i2) throws NumberFormatException {
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
