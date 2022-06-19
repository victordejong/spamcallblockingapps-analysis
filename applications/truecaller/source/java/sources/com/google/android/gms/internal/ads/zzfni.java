package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfni.class */
public final class zzfni {
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            valueOf.length();
            throw new NullPointerException("null key in entry: null=".concat(valueOf));
        } else if (obj2 != null) {
        } else {
            String obj3 = obj.toString();
            throw new NullPointerException(C22128a.m8610j(new StringBuilder(obj3.length() + 26), "null value in entry: ", obj3, "=null"));
        }
    }

    public static int zzb(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(C22128a.m8614i(new StringBuilder(str.length() + 40), str, " cannot be negative but was: ", i));
    }
}
