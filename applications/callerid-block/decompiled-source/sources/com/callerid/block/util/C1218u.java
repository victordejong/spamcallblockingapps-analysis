package com.callerid.block.util;
/* renamed from: com.callerid.block.util.u */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/u.class */
public class C1218u {
    /* renamed from: a */
    private static String m9550a(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append('\t');
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    public static String m9549b(String str) {
        StringBuilder sb;
        String sb2;
        StringBuilder sb3;
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i = 0;
        int i2 = 0;
        char c = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '{') {
                i2++;
                sb3 = new StringBuilder();
            } else {
                if (charAt == '}') {
                    i2--;
                    stringBuffer.append("\n");
                    stringBuffer.append(m9550a(i2));
                } else if (charAt == ',') {
                    sb3 = new StringBuilder();
                } else {
                    if (charAt == ':') {
                        sb = new StringBuilder();
                        sb.append(charAt);
                        sb.append(" ");
                    } else if (charAt == '[') {
                        i2++;
                        if (str.charAt(i + 1) == ']') {
                            i2 = i2;
                        } else {
                            sb3 = new StringBuilder();
                        }
                    } else {
                        i2 = i2;
                        if (charAt == ']') {
                            i2--;
                            if (c == '[') {
                                i2 = i2;
                            } else {
                                sb = new StringBuilder();
                                sb.append("\n");
                                sb.append(m9550a(i2));
                                sb.append(charAt);
                            }
                        }
                    }
                    sb2 = sb.toString();
                    stringBuffer.append(sb2);
                    i++;
                    c = charAt;
                }
                stringBuffer.append(charAt);
                i++;
                c = charAt;
            }
            sb3.append(charAt);
            sb3.append("\n");
            stringBuffer.append(sb3.toString());
            sb2 = m9550a(i2);
            stringBuffer.append(sb2);
            i++;
            c = charAt;
        }
        return stringBuffer.toString();
    }
}
