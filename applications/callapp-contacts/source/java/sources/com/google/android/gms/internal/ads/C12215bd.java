package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.bd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bd.class */
final class C12215bd extends AbstractC12214bc {
    /* renamed from: a */
    private static String m18134a(String str) {
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

    @Override // com.google.android.gms.internal.ads.AbstractC12214bc
    /* renamed from: a */
    public final String mo18119a(String str, String str2) {
        String m18134a = m18134a(str);
        String m18134a2 = m18134a(str2);
        if (TextUtils.isEmpty(m18134a)) {
            return m18134a2;
        }
        if (TextUtils.isEmpty(m18134a2)) {
            return m18134a;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(m18134a).length() + 1 + String.valueOf(m18134a2).length());
        sb.append(m18134a);
        sb.append(",");
        sb.append(m18134a2);
        return sb.toString();
    }
}
