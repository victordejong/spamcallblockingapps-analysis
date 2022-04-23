package com.callerid.block.util;
/* renamed from: com.callerid.block.util.r */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/r.class */
public class C1209r {
    /* renamed from: a */
    public static String m9628a(String str) {
        Exception e;
        StringBuffer stringBuffer = null;
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            try {
                String[] split = str.split(",");
                int i = 0;
                while (true) {
                    stringBuffer = stringBuffer2;
                    if (i >= split.length) {
                        break;
                    }
                    stringBuffer2.append((char) Integer.parseInt(split[i]));
                    i++;
                }
            } catch (Exception e2) {
                e = e2;
                stringBuffer = stringBuffer2;
                e.printStackTrace();
                return stringBuffer.toString();
            }
        } catch (Exception e3) {
            e = e3;
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:5|(6:13|(1:15)|39|30|44|33)|17|(1:19)(2:20|(2:25|(1:29))(1:24))|39|30|44|33|3) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        if (r0 <= 'z') goto L_0x004e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b6, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
        r10.printStackTrace();
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m9627b(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.util.C1209r.m9627b(java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public static String m9626c(String str) {
        int i;
        int i2;
        StringBuilder sb = new StringBuilder();
        char[] charArray = C1164a0.m9912j(str.getBytes()).toCharArray();
        for (int i3 = 0; i3 < charArray.length; i3++) {
            char c = charArray[i3];
            if ((c < '0' || c > '9') && (c < 'A' || c > 'Z')) {
                i = c;
                if (c >= 'a') {
                    i = c;
                    if (c > 'z') {
                    }
                }
                sb.append(m9628a(String.valueOf(i)));
            }
            i = (i3 % 5) + c;
            if (i > 122) {
                i2 = (i - 122) + 48;
            } else if (c > 'Z' || i <= 90) {
                if (c <= '9' && i > 57) {
                    i2 = (i - 57) + 65;
                }
                sb.append(m9628a(String.valueOf(i)));
            } else {
                i2 = (i - 90) + 97;
            }
            i = i2 - 1;
            sb.append(m9628a(String.valueOf(i)));
        }
        return sb.toString();
    }
}
