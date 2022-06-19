package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fu2.class */
public final class fu2 {
    /* renamed from: a */
    public static String m15053a(String str) {
        char c;
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m15050d(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    if (m15050d(charArray[i])) {
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

    /* renamed from: b */
    public static String m15052b(String str) {
        char c;
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m15051c(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    if (m15051c(charArray[i])) {
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

    /* renamed from: c */
    public static boolean m15051c(char c) {
        return c >= 'a' && c <= 'z';
    }

    /* renamed from: d */
    public static boolean m15050d(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: e */
    public static boolean m15049e(CharSequence charSequence, CharSequence charSequence2) {
        int m15048f;
        int length = "content-length".length();
        if (charSequence2 == "content-length") {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = "content-length".charAt(i);
            char charAt2 = charSequence2.charAt(i);
            if (charAt != charAt2 && ((m15048f = m15048f(charAt)) >= 26 || m15048f != m15048f(charAt2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    private static int m15048f(char c) {
        return (char) ((c | ' ') - 97);
    }
}
