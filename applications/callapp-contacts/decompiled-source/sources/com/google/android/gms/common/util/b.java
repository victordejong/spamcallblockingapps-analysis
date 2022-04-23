package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.m;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/b.class */
public final class b {
    private b() {
    }

    public static void a(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i]));
        }
    }

    public static void a(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i]));
        }
    }

    public static void a(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i]));
        }
    }

    public static void a(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i]));
        }
    }

    public static <T> void a(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(tArr[i]);
        }
    }

    public static void a(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i]);
            sb.append("\"");
        }
    }

    public static void a(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i]));
        }
    }

    public static boolean a(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean a(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (i < length) {
            if (m.a(tArr[i], t)) {
                return i >= 0;
            }
            i++;
        }
        return false;
    }

    public static <T> T[] a(T[]... tArr) {
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i += tArr[i2].length;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr[0], i);
        int length = tArr[0].length;
        for (int i3 = 1; i3 < 2; i3++) {
            T[] tArr3 = tArr[1];
            System.arraycopy(tArr3, 0, tArr2, length, tArr3.length);
        }
        return tArr2;
    }
}
