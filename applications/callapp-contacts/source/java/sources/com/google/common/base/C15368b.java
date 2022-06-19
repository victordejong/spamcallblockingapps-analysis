package com.google.common.base;
/* renamed from: com.google.common.base.b */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/b.class */
public final class C15368b {
    private C15368b() {
    }

    /* renamed from: a */
    public static String m8972a(String str) {
        char c;
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m8973a(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    if (m8973a(charArray[i])) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: a */
    private static boolean m8973a(char c) {
        return c >= 'A' && c <= 'Z';
    }
}
