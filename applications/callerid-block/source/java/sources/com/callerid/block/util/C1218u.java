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
        int i;
        StringBuilder sb3;
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
                    i3++;
                    sb3 = new StringBuilder();
                } else {
                    if (charAt == '}') {
                        i = i3 - 1;
                        stringBuffer.append("\n");
                        stringBuffer.append(m9550a(i));
                    } else if (charAt == ',') {
                        sb3 = new StringBuilder();
                    } else {
                        if (charAt == ':') {
                            sb = new StringBuilder();
                            sb.append(charAt);
                            sb.append(" ");
                        } else if (charAt == '[') {
                            i3++;
                            if (str.charAt(i2 + 1) == ']') {
                                i = i3;
                            } else {
                                sb3 = new StringBuilder();
                            }
                        } else {
                            i = i3;
                            if (charAt == ']') {
                                i3--;
                                if (c2 == '[') {
                                    i = i3;
                                } else {
                                    sb = new StringBuilder();
                                    sb.append("\n");
                                    sb.append(m9550a(i3));
                                    sb.append(charAt);
                                }
                            }
                        }
                        sb2 = sb.toString();
                        stringBuffer.append(sb2);
                        i2++;
                        c = charAt;
                    }
                    stringBuffer.append(charAt);
                    i3 = i;
                    i2++;
                    c = charAt;
                }
                sb3.append(charAt);
                sb3.append("\n");
                stringBuffer.append(sb3.toString());
                sb2 = m9550a(i3);
                stringBuffer.append(sb2);
                i2++;
                c = charAt;
            } else {
                return stringBuffer.toString();
            }
        }
    }
}
