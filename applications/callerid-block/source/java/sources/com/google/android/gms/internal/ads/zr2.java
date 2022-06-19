package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zr2.class */
public final class zr2 {

    /* renamed from: a */
    public static final int f9434a;

    /* renamed from: b */
    public static final String f9435b;

    /* renamed from: c */
    public static final String f9436c;

    /* renamed from: d */
    public static final String f9437d;

    /* renamed from: e */
    public static final String f9438e;

    static {
        int i = Build.VERSION.SDK_INT;
        int i2 = i;
        if (i == 25) {
            i2 = i;
            if (Build.VERSION.CODENAME.charAt(0) == 'O') {
                i2 = 26;
            }
        }
        f9434a = i2;
        String str = Build.DEVICE;
        f9435b = str;
        String str2 = Build.MANUFACTURER;
        f9436c = str2;
        String str3 = Build.MODEL;
        f9437d = str3;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str3).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i2);
        f9438e = sb.toString();
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: a */
    public static boolean m4534a(Object obj, Object obj2) {
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
    public static ExecutorService m4533b(String str) {
        return Executors.newSingleThreadExecutor(new yr2("Loader:ExtractorMediaPeriod"));
    }

    /* renamed from: c */
    public static void m4532c(yq2 yq2Var) {
        if (yq2Var != null) {
            try {
                yq2Var.m4723f();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: d */
    public static byte[] m4531d(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: e */
    public static int m4530e(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: f */
    public static int m4529f(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: g */
    public static float m4528g(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: h */
    public static int m4527h(long[] jArr, long j, boolean z, boolean z2) {
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
    public static int m4526i(long[] jArr, long j, boolean z, boolean z2) {
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
    public static long m4525j(long j, long j2, long j3) {
        if (j3 < j2 || j3 % j2 != 0) {
            if (j3 < j2 && j2 % j3 == 0) {
                return j * (j2 / j3);
            }
            double d = j;
            double d2 = j2;
            double d3 = j3;
            Double.isNaN(d2);
            Double.isNaN(d3);
            Double.isNaN(d);
            return (long) (d * (d2 / d3));
        }
        return j / (j3 / j2);
    }

    /* renamed from: k */
    public static void m4524k(long[] jArr, long j, long j2) {
        if (j2 >= 1000000 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
        } else if (j2 < 1000000 && 1000000 % j2 == 0) {
            long j4 = 1000000 / j2;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] * j4;
            }
        } else {
            double d = j2;
            Double.isNaN(d);
            double d2 = 1000000.0d / d;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                double d3 = jArr[i3];
                Double.isNaN(d3);
                jArr[i3] = (long) (d3 * d2);
            }
        }
    }

    /* renamed from: l */
    public static int m4523l(String str) {
        int length = str.length();
        jr2.m6926a(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    /* renamed from: m */
    public static byte[] m4522m(String str) {
        byte[] bArr = new byte[38];
        for (int i = 0; i < 38; i++) {
            int i2 = i + i;
            bArr[i] = (byte) ((Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2), 16) << 4) + Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2 + 1), 16));
        }
        return bArr;
    }

    /* renamed from: n */
    public static String m4521n(Object[] objArr) {
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
    public static int m4520o(int i) {
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
    public static int m4519p(int i, int i2) {
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
    public static int m4518q(int i) {
        return i != 1 ? 13107200 : 3538944;
    }
}
