package org.apache.commons.lang3;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f39135a = new String[128];

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f39136b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    static {
        char c2 = 0;
        while (true) {
            String[] strArr = f39135a;
            if (c2 < strArr.length) {
                strArr[c2] = String.valueOf(c2);
                c2 = (char) (c2 + 1);
            } else {
                return;
            }
        }
    }

    public static int a(char c2, char c3) {
        return c2 - c3;
    }

    public static boolean a(char c2) {
        return c2 >= ' ' && c2 < 127;
    }
}
