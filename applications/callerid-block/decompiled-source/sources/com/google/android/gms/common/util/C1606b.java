package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1579g;
import java.lang.reflect.Array;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.util.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/b.class */
public final class C1606b {
    @RecentlyNonNull
    /* renamed from: a */
    public static <T> T[] m8252a(@RecentlyNonNull T[]... tArr) {
        if (tArr.length == 0) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
        }
        int i = 0;
        for (T[] tArr2 : tArr) {
            i += tArr2.length;
        }
        T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i);
        int length = tArr[0].length;
        for (int i2 = 1; i2 < tArr.length; i2++) {
            T[] tArr4 = tArr[i2];
            int length2 = tArr4.length;
            System.arraycopy(tArr4, 0, tArr3, length, length2);
            length += length2;
        }
        return tArr3;
    }

    /* renamed from: b */
    public static <T> boolean m8251b(@RecentlyNonNull T[] tArr, @RecentlyNonNull T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (i < length) {
            if (C1579g.m8358a(tArr[i], t)) {
                return i >= 0;
            }
            i++;
        }
        return false;
    }
}
