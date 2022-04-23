package com.google.android.datatransport.cct;
/* renamed from: com.google.android.datatransport.cct.e */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/e.class */
public final class C1280e {
    /* renamed from: a */
    static String m9335a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
