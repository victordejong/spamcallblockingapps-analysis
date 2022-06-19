package com.google.android.gms.internal.vision;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzda.class */
public final class zzda {
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
