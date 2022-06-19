package com.google.android.gms.internal.mlkit_translate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzj.class */
public final class zzj {
    public static int zza(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            throw new NullPointerException(C22128a.m8674Q1(valueOf.length() + 24, "null key in entry: null=", valueOf));
        } else if (obj2 != null) {
        } else {
            String valueOf2 = String.valueOf(obj);
            throw new NullPointerException(C22128a.m8671R1(valueOf2.length() + 26, "null value in entry: ", valueOf2, "=null"));
        }
    }
}
