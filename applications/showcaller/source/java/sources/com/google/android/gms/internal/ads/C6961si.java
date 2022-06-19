package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.si */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/si.class */
public final class C6961si {

    /* renamed from: a */
    public static final int f29514a;

    /* renamed from: b */
    public static final String f29515b;

    /* renamed from: c */
    public static final String f29516c;

    /* renamed from: d */
    public static final String f29517d;

    /* renamed from: e */
    public static final String f29518e;

    /* renamed from: f */
    private static final Pattern f29519f;

    /* renamed from: g */
    private static final Pattern f29520g;

    /* renamed from: h */
    private static final Pattern f29521h;

    static {
        int i = Build.VERSION.SDK_INT;
        int i2 = i;
        if (i == 25) {
            i2 = i;
            if (Build.VERSION.CODENAME.charAt(0) == 'O') {
                i2 = 26;
            }
        }
        f29514a = i2;
        String str = Build.DEVICE;
        f29515b = str;
        String str2 = Build.MANUFACTURER;
        f29516c = str2;
        String str3 = Build.MODEL;
        f29517d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i2);
        f29518e = sb.toString();
        f29519f = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f29520g = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f29521h = Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: a */
    public static boolean m11021a(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static ExecutorService m11020b(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC6924ri("Loader:ExtractorMediaPeriod"));
    }

    /* renamed from: c */
    public static void m11019c(AbstractC6886qh abstractC6886qh) {
        if (abstractC6886qh != null) {
            try {
                abstractC6886qh.mo10688e();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: d */
    public static byte[] m11018d(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: e */
    public static int m11017e(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: f */
    public static int m11016f(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: g */
    public static float m11015g(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: h */
    public static int m11014h(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i2 = i3 - 1;
                if (i2 < 0) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = i2 + 1;
        }
        int i4 = i;
        if (z2) {
            i4 = Math.max(0, i);
        }
        return i4;
    }

    /* renamed from: i */
    public static int m11013i(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i2 = i3 + 1;
                if (i2 >= jArr.length) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = z ? i2 - 1 : i2;
        }
        return z2 ? Math.min(jArr.length - 1, i) : i;
    }

    /* renamed from: j */
    public static long m11012j(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        return (i < 0 || j3 % j2 != 0) ? (i >= 0 || j2 % j3 != 0) ? (long) (j * (j2 / j3)) : j * (j2 / j3) : j / (j3 / j2);
    }

    /* renamed from: k */
    public static void m11011k(long[] jArr, long j, long j2) {
        int i = (j2 > 1000000L ? 1 : (j2 == 1000000L ? 0 : -1));
        if (i >= 0 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j3;
            }
        } else if (i >= 0 || 1000000 % j2 != 0) {
            double d = 1000000.0d / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j4;
            }
        }
    }

    /* renamed from: l */
    public static int m11010l(String str) {
        int length = str.length();
        C6367ci.m16042a(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    /* renamed from: m */
    public static byte[] m11009m(String str) {
        byte[] bArr = new byte[38];
        for (int i = 0; i < 38; i++) {
            int i2 = i + i;
            bArr[i] = (byte) ((Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2), 16) << 4) + Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2 + 1), 16));
        }
        return bArr;
    }

    /* renamed from: n */
    public static String m11008n(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int length = objArr.length;
            if (i < length) {
                sb.append(objArr[i].getClass().getSimpleName());
                if (i < length - 1) {
                    sb.append(", ");
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: o */
    public static int m11007o(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            if (i == 24) {
                return Integer.MIN_VALUE;
            }
            return i != 32 ? 0 : 1073741824;
        }
        return 3;
    }

    /* renamed from: p */
    public static int m11006p(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if (i == 1073741824) {
                return i2 * 4;
            }
            if (i == 2) {
                return i2 + i2;
            }
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            return i2;
        }
        return i2 * 3;
    }

    /* renamed from: q */
    public static int m11005q(int i) {
        return i != 1 ? 13107200 : 3538944;
    }
}
