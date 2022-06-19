package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacb.class */
final class zzacb extends zzabw {
    private static String zzcs(String str) {
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

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String zzf(String str, String str2) {
        String zzcs = zzcs(str);
        String zzcs2 = zzcs(str2);
        if (TextUtils.isEmpty(zzcs)) {
            return zzcs2;
        }
        if (TextUtils.isEmpty(zzcs2)) {
            return zzcs;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzcs).length() + 1 + String.valueOf(zzcs2).length());
        sb.append(zzcs);
        sb.append(",");
        sb.append(zzcs2);
        return sb.toString();
    }
}
