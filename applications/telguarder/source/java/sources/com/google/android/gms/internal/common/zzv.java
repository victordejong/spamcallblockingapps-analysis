package com.google.android.gms.internal.common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzv.class */
public final class zzv {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i2);
                throw new NullPointerException(sb.toString());
            }
        }
        return objArr;
    }
}
