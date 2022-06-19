package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cy2.class */
public final class cy2 {
    /* renamed from: a */
    public static Object[] m15976a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m15975b(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: b */
    public static Object m15975b(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }
}
