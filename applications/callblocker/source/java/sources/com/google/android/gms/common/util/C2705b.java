package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.C2657q;
import java.lang.reflect.Array;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.util.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/b.class */
public final class C2705b {
    /* renamed from: a */
    public static <T> boolean m13879a(T[] tArr, T t) {
        boolean z = false;
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (C2657q.m13992a(tArr[i], t)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static <T> T[] m13878a(T[]... tArr) {
        Object[] objArr;
        if (tArr.length == 0) {
            objArr = (Object[]) Array.newInstance(tArr.getClass(), 0);
        } else {
            int i = 0;
            for (T[] tArr2 : tArr) {
                i += tArr2.length;
            }
            Object[] copyOf = Arrays.copyOf(tArr[0], i);
            int length = tArr[0].length;
            for (int i2 = 1; i2 < tArr.length; i2++) {
                T[] tArr3 = tArr[i2];
                System.arraycopy(tArr3, 0, copyOf, length, tArr3.length);
                length += tArr3.length;
            }
            objArr = copyOf;
        }
        return (T[]) objArr;
    }
}
