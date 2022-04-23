package com.bytedance.sdk.openadsdk.preload.a.b.a.a;

import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f9913a = TimeZone.getTimeZone("UTC");

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

    /* JADX WARN: Code restructure failed: missing block: B:118:0x037c, code lost:
        if (r0.isEmpty() != false) goto L_0x037f;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0323 A[Catch: IllegalArgumentException -> 0x0332, IllegalArgumentException -> 0x0332, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0337, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0337, IndexOutOfBoundsException -> 0x033c, IndexOutOfBoundsException -> 0x033c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0337, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x0090, B:29:0x009b, B:34:0x00b0, B:36:0x00bc, B:40:0x00cc, B:42:0x00d4, B:50:0x00f5, B:56:0x0113, B:60:0x0124, B:72:0x0198, B:74:0x01a1, B:77:0x01b0, B:82:0x01cc, B:83:0x01f9, B:85:0x01fb, B:88:0x020e, B:90:0x0231, B:92:0x0243, B:95:0x0250, B:97:0x0274, B:100:0x0288, B:101:0x02c0, B:103:0x02c4, B:104:0x02c9, B:104:0x02c9, B:105:0x02cc, B:107:0x0323, B:107:0x0323, B:108:0x0326, B:109:0x0331), top: B:122:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a1 A[Catch: IllegalArgumentException -> 0x0332, NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0337, IndexOutOfBoundsException -> 0x033c, TRY_LEAVE, TryCatch #2 {NumberFormatException | IllegalArgumentException | IndexOutOfBoundsException -> 0x0337, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x0090, B:29:0x009b, B:34:0x00b0, B:36:0x00bc, B:40:0x00cc, B:42:0x00d4, B:50:0x00f5, B:56:0x0113, B:60:0x0124, B:72:0x0198, B:74:0x01a1, B:77:0x01b0, B:82:0x01cc, B:83:0x01f9, B:85:0x01fb, B:88:0x020e, B:90:0x0231, B:92:0x0243, B:95:0x0250, B:97:0x0274, B:100:0x0288, B:101:0x02c0, B:103:0x02c4, B:104:0x02c9, B:104:0x02c9, B:105:0x02cc, B:107:0x0323, B:107:0x0323, B:108:0x0326, B:109:0x0331), top: B:122:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date a(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.b.a.a.a.a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean a(String str, int i, char c2) {
        return i < str.length() && str.charAt(i) == c2;
    }
}
