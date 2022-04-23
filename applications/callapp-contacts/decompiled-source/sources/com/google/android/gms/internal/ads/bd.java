package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bd.class */
final class bd extends bc {
    private static String a(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        int length = str.length();
        while (true) {
            i = length;
            if (i2 >= str.length()) {
                break;
            }
            i = length;
            if (str.charAt(i2) != ',') {
                break;
            }
            i2++;
        }
        while (i > 0 && str.charAt(i - 1) == ',') {
            i--;
        }
        if (i < i2) {
            return null;
        }
        return (i2 == 0 && i == str.length()) ? str : str.substring(i2, i);
    }

    @Override // com.google.android.gms.internal.ads.bc
    public final String a(String str, String str2) {
        String a2 = a(str);
        String a3 = a(str2);
        if (TextUtils.isEmpty(a2)) {
            return a3;
        }
        if (TextUtils.isEmpty(a3)) {
            return a2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 1 + String.valueOf(a3).length());
        sb.append(a2);
        sb.append(",");
        sb.append(a3);
        return sb.toString();
    }
}
