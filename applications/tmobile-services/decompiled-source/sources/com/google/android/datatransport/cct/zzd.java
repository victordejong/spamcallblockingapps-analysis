package com.google.android.datatransport.cct;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zzd.class */
public final class zzd {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m15474a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
