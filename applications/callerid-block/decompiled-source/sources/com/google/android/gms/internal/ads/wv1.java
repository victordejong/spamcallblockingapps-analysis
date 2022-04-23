package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wv1.class */
public final class wv1 {
    /* renamed from: a */
    public static boolean m4994a(CharSequence charSequence, CharSequence charSequence2) {
        int b;
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
            if (charAt != charAt2 && ((b = m4993b(charAt)) >= 26 || b != m4993b(charAt2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static int m4993b(char c) {
        return (char) ((c | ' ') - 97);
    }
}
