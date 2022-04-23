package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jx1.class */
public final class jx1 {
    /* renamed from: a */
    static Object[] m6907a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m6906b(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: b */
    static Object m6906b(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }
}
