package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p253a.xe0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpq.class */
public final class zzpq {

    /* renamed from: a */
    public static final int f28786a;

    /* renamed from: b */
    public static final String f28787b;

    /* renamed from: c */
    public static final String f28788c;

    /* renamed from: d */
    public static final String f28789d;

    /* renamed from: e */
    public static final String f28790e;

    static {
        f28786a = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        f28787b = Build.DEVICE;
        f28788c = Build.MANUFACTURER;
        String str = Build.MODEL;
        f28789d = str;
        String str2 = f28787b;
        String str3 = f28788c;
        int i = f28786a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str).length() + String.valueOf(str3).length());
        sb.append(str2);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        f28790e = sb.toString();
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    /* renamed from: a */
    public static float m11630a(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    /* renamed from: a */
    public static int m11629a(int i) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 2;
        }
        if (i != 24) {
            return i != 32 ? 0 : 1073741824;
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: a */
    public static int m11628a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    /* renamed from: a */
    public static int m11627a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: a */
    public static int m11621a(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: a */
    public static long m11626a(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return j * (j2 / j3);
        }
        double d = j2;
        double d2 = j3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = j;
        Double.isNaN(d4);
        return (long) (d4 * d3);
    }

    /* renamed from: a */
    public static String m11620a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static ExecutorService m11623a(String str) {
        return Executors.newSingleThreadExecutor(new xe0(str));
    }

    /* renamed from: a */
    public static void m11625a(zzom zzomVar) {
        if (zzomVar != null) {
            try {
                zzomVar.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m11622a(long[] jArr, long j, long j2) {
        if (j2 >= 1000000 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
        } else if (j2 >= 1000000 || 1000000 % j2 != 0) {
            double d = j2;
            Double.isNaN(d);
            double d2 = 1000000.0d / d;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                double d3 = jArr[i2];
                Double.isNaN(d3);
                jArr[i2] = (long) (d3 * d2);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = jArr[i3] * j4;
            }
        }
    }

    /* renamed from: a */
    public static boolean m11624a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m11619b(int i) {
        if (i == 0) {
            return 16777216;
        }
        if (i == 1) {
            return 3538944;
        }
        if (i == 2) {
            return 13107200;
        }
        if (i == 3 || i == 4) {
            return 131072;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static int m11618b(int i, int i2) {
        if (i == Integer.MIN_VALUE) {
            return i2 * 3;
        }
        if (i == 1073741824) {
            return i2 << 2;
        }
        if (i == 2) {
            return i2 << 1;
        }
        if (i == 3) {
            return i2;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static int m11616b(long[] jArr, long j, boolean z, boolean z2) {
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

    /* renamed from: b */
    public static String m11617b(String str) {
        if (str == null) {
            return null;
        }
        return new Locale(str).getLanguage();
    }

    /* renamed from: c */
    public static byte[] m11615c(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    /* renamed from: d */
    public static int m11614d(String str) {
        int length = str.length();
        zzoz.m11696a(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    /* renamed from: e */
    public static byte[] m11613e(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i << 1;
            bArr[i] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }
}
