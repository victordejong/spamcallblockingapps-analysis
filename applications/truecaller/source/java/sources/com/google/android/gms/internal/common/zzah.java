package com.google.android.gms.internal.common;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzah.class */
public final class zzah {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(C22128a.m8690L1(20, "at index ", i2));
            }
        }
        return objArr;
    }
}
