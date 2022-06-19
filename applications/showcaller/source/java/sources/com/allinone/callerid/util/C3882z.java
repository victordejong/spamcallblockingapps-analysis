package com.allinone.callerid.util;
/* renamed from: com.allinone.callerid.util.z */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z.class */
public class C3882z {
    /* renamed from: a */
    private static String m23890a(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append('\t');
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    public static String m23889b(String str) {
        int i;
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        char c = 0;
        while (true) {
            char c2 = c;
            if (i2 < length) {
                char charAt = str.charAt(i2);
                if (charAt == '{') {
                    i = i3 + 1;
                    stringBuffer.append(charAt + "\n");
                    stringBuffer.append(m23890a(i));
                } else if (charAt == '}') {
                    i = i3 - 1;
                    stringBuffer.append("\n");
                    stringBuffer.append(m23890a(i));
                    stringBuffer.append(charAt);
                } else if (charAt == ',') {
                    stringBuffer.append(charAt + "\n");
                    stringBuffer.append(m23890a(i3));
                    i = i3;
                } else if (charAt == ':') {
                    stringBuffer.append(charAt + " ");
                    i = i3;
                } else if (charAt == '[') {
                    i = i3 + 1;
                    if (str.charAt(i2 + 1) == ']') {
                        stringBuffer.append(charAt);
                    } else {
                        stringBuffer.append(charAt + "\n");
                        stringBuffer.append(m23890a(i));
                    }
                } else if (charAt == ']') {
                    int i4 = i3 - 1;
                    if (c2 == '[') {
                        stringBuffer.append(charAt);
                        i = i4;
                    } else {
                        stringBuffer.append("\n" + m23890a(i4) + charAt);
                        i = i4;
                    }
                } else {
                    stringBuffer.append(charAt);
                    i = i3;
                }
                i2++;
                i3 = i;
                c = charAt;
            } else {
                return stringBuffer.toString();
            }
        }
    }
}
