package p081h.p203i.p384e.p386w.p387m.p388c;

import java.util.TimeZone;
/* renamed from: h.i.e.w.m.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/m/c/a.class */
public class C10169a {

    /* renamed from: a */
    public static final TimeZone f22900a = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    public static int m13289a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* renamed from: a */
    public static int m13287a(String str, int i, int i2) throws NumberFormatException {
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

    /* JADX WARN: Code restructure failed: missing block: B:120:0x03bf, code lost:
        if (r0.isEmpty() != false) goto L_0x03c2;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0360 A[Catch: IllegalArgumentException -> 0x036f, IllegalArgumentException -> 0x036f, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0374, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0374, IndexOutOfBoundsException -> 0x0379, IndexOutOfBoundsException -> 0x0379, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0374, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b6, B:41:0x00cf, B:43:0x00d8, B:51:0x0118, B:57:0x0138, B:61:0x0147, B:73:0x01b3, B:75:0x01bc, B:78:0x01cb, B:84:0x01e9, B:85:0x021c, B:87:0x021e, B:90:0x0231, B:92:0x0254, B:94:0x0265, B:97:0x0272, B:99:0x02ab, B:102:0x02bf, B:103:0x02fd, B:105:0x0301, B:106:0x0306, B:106:0x0306, B:107:0x0309, B:109:0x0360, B:109:0x0360, B:110:0x0363, B:111:0x036e), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01bc A[Catch: IllegalArgumentException -> 0x036f, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0374, IndexOutOfBoundsException -> 0x0379, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0374, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b6, B:41:0x00cf, B:43:0x00d8, B:51:0x0118, B:57:0x0138, B:61:0x0147, B:73:0x01b3, B:75:0x01bc, B:78:0x01cb, B:84:0x01e9, B:85:0x021c, B:87:0x021e, B:90:0x0231, B:92:0x0254, B:94:0x0265, B:97:0x0272, B:99:0x02ab, B:102:0x02bf, B:103:0x02fd, B:105:0x0301, B:106:0x0306, B:106:0x0306, B:107:0x0309, B:109:0x0360, B:109:0x0360, B:110:0x0363, B:111:0x036e), top: B:124:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date m13286a(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1074
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p386w.p387m.p388c.C10169a.m13286a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: a */
    public static boolean m13288a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }
}
