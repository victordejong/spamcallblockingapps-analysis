package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.uw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uw.class */
final class C7049uw extends AbstractC7086vw {
    /* renamed from: b */
    private static final String m10173b(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i2 = 0;
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
        while (i > 0) {
            int i3 = i - 1;
            if (str.charAt(i3) != ',') {
                break;
            }
            i = i3;
        }
        if (i < i2) {
            return null;
        }
        if (i2 == 0) {
            if (i == str.length()) {
                return str;
            }
            i2 = 0;
        }
        return str.substring(i2, i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7086vw
    /* renamed from: a */
    public final String mo9861a(String str, String str2) {
        String m10173b = m10173b(str);
        String m10173b2 = m10173b(str2);
        if (TextUtils.isEmpty(m10173b)) {
            return m10173b2;
        }
        if (TextUtils.isEmpty(m10173b2)) {
            return m10173b;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(m10173b).length() + 1 + String.valueOf(m10173b2).length());
        sb.append(m10173b);
        sb.append(",");
        sb.append(m10173b2);
        return sb.toString();
    }
}
