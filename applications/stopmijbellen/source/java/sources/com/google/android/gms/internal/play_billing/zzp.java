package com.google.android.gms.internal.play_billing;

import androidx.recyclerview.widget.C0608b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzp.class */
final class zzp {
    public static void zza(Object obj, Object obj2) {
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
