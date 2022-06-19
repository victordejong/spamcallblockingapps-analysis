package com.google.common.base;
/* renamed from: com.google.common.base.a */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/a.class */
public final class C8738a {
    /* renamed from: a */
    public static boolean m2827a(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: b */
    public static String m2826b(String str) {
        char c;
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m2827a(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    if (m2827a(charArray[i])) {
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
}
