package com.google.android.gms.internal.common;

import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzah.class */
public final class zzah {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(C0082b.m8758d(20, "at index ", i2));
            }
        }
        return objArr;
    }
}
