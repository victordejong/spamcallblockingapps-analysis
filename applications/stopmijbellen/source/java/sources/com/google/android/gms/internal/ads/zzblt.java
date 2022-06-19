package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblt.class */
final class zzblt extends zzblu {
    private static final String zzb(String str) {
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

    @Override // com.google.android.gms.internal.ads.zzblu
    public final String zza(String str, String str2) {
        String zzb = zzb(str);
        String zzb2 = zzb(str2);
        return TextUtils.isEmpty(zzb) ? zzb2 : TextUtils.isEmpty(zzb2) ? zzb : C0608b.m7625j(new StringBuilder(String.valueOf(zzb).length() + 1 + String.valueOf(zzb2).length()), zzb, ",", zzb2);
    }
}
