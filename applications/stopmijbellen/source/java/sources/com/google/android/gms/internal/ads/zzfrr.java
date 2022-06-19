package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrr.class */
final class zzfrr {
    public static int zza(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zzb(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            String obj3 = obj.toString();
            throw new NullPointerException(C0608b.m7625j(new StringBuilder(obj3.length() + 26), "null value in entry: ", obj3, "=null"));
        }
        throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
    }
}
