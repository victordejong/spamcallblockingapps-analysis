package com.google.gson.internal.bind.a;

import java.util.TimeZone;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f32704a = TimeZone.getTimeZone("UTC");

    private static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private static int a(String str, int i, int i2) throws NumberFormatException {
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

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0380, code lost:
        if (r0.isEmpty() != false) goto L_0x0383;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0327 A[Catch: IllegalArgumentException -> 0x0336, IllegalArgumentException -> 0x0336, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x033b, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x033b, IndexOutOfBoundsException -> 0x0340, IndexOutOfBoundsException -> 0x0340, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x033b, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x019c, B:74:0x01a5, B:77:0x01b4, B:82:0x01d0, B:83:0x01fd, B:85:0x01ff, B:88:0x0212, B:90:0x0235, B:92:0x0247, B:95:0x0254, B:97:0x0278, B:100:0x028c, B:101:0x02c4, B:103:0x02c8, B:104:0x02cd, B:104:0x02cd, B:105:0x02d0, B:107:0x0327, B:107:0x0327, B:108:0x032a, B:109:0x0335), top: B:122:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a5 A[Catch: IllegalArgumentException -> 0x0336, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x033b, IndexOutOfBoundsException -> 0x0340, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x033b, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x019c, B:74:0x01a5, B:77:0x01b4, B:82:0x01d0, B:83:0x01fd, B:85:0x01ff, B:88:0x0212, B:90:0x0235, B:92:0x0247, B:95:0x0254, B:97:0x0278, B:100:0x028c, B:101:0x02c4, B:103:0x02c8, B:104:0x02cd, B:104:0x02cd, B:105:0x02d0, B:107:0x0327, B:107:0x0327, B:108:0x032a, B:109:0x0335), top: B:122:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date a(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.a.a.a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean a(String str, int i, char c2) {
        return i < str.length() && str.charAt(i) == c2;
    }
}
