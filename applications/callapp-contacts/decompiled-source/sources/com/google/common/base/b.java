package com.google.common.base;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/b.class */
public final class b {
    private b() {
    }

    public static String a(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (a(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (a(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    private static boolean a(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }
}
