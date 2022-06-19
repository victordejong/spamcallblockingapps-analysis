package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/ArrayUtils.class */
public final class ArrayUtils {
    private ArrayUtils() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m38796a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    /* renamed from: b */
    public static <T> boolean m38795b(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (i < length) {
            if (Objects.m38910a(tArr[i], t)) {
                return i >= 0;
            }
            i++;
        }
        return false;
    }

    @KeepForSdk
    /* renamed from: c */
    public static <T> void m38794c(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(tArr[i]);
        }
    }
}
