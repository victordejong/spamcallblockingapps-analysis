package org.apache.commons.lang3;
/* renamed from: org.apache.commons.lang3.b */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/b.class */
public final class C20724b {

    /* renamed from: a */
    private static final String[] f67199a = new String[128];

    /* renamed from: b */
    private static final char[] f67200b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    static {
        char c = 0;
        while (true) {
            char c2 = c;
            String[] strArr = f67199a;
            if (c2 < strArr.length) {
                strArr[c2] = String.valueOf(c2);
                c = (char) (c2 + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static int m594a(char c, char c2) {
        return c - c2;
    }

    /* renamed from: a */
    public static boolean m595a(char c) {
        return c >= ' ' && c < 127;
    }
}
