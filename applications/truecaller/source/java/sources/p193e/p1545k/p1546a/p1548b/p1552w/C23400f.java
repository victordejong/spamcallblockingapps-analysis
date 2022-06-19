package p193e.p1545k.p1546a.p1548b.p1552w;

import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.framework.common.ExceptionCode;
import java.math.BigDecimal;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.b.w.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/f.class */
public final class C23400f {

    /* renamed from: a */
    public static final String f64796a = String.valueOf(Long.MIN_VALUE).substring(1);

    /* renamed from: b */
    public static final String f64797b = String.valueOf((long) RecyclerView.FOREVER_NS);

    /* renamed from: a */
    public static NumberFormatException m7122a(String str) {
        return new NumberFormatException(C22128a.m8725C2("Value \"", str, "\" can not be represented as BigDecimal"));
    }

    /* renamed from: b */
    public static int m7121b(String str, int i) {
        String trim;
        int length;
        int i2;
        String str2;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            int i3 = 0;
            char charAt = trim.charAt(0);
            if (charAt == '+') {
                str2 = trim.substring(1);
                i2 = str2.length();
            } else {
                i2 = length;
                str2 = trim;
                if (charAt == '-') {
                    i3 = 1;
                    str2 = trim;
                    i2 = length;
                }
            }
            while (i3 < i2) {
                char charAt2 = str2.charAt(i3);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (int) m7118e(str2);
                    } catch (NumberFormatException e) {
                        return i;
                    }
                }
                i3++;
            }
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                return i;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static long m7120c(String str, long j) {
        String trim;
        int length;
        int i;
        String str2;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            int i2 = 0;
            char charAt = trim.charAt(0);
            if (charAt == '+') {
                str2 = trim.substring(1);
                i = str2.length();
            } else {
                i = length;
                str2 = trim;
                if (charAt == '-') {
                    i2 = 1;
                    str2 = trim;
                    i = length;
                }
            }
            while (i2 < i) {
                char charAt2 = str2.charAt(i2);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (long) m7118e(str2);
                    } catch (NumberFormatException e) {
                        return j;
                    }
                }
                i2++;
            }
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException e2) {
                return j;
            }
        }
        return j;
    }

    /* renamed from: d */
    public static BigDecimal m7119d(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw m7122a(new String(cArr, i, i2));
        }
    }

    /* renamed from: e */
    public static double m7118e(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    /* renamed from: f */
    public static int m7117f(String str) {
        boolean z = false;
        char charAt = str.charAt(0);
        int length = str.length();
        int i = 1;
        if (charAt == '-') {
            z = true;
        }
        if (z) {
            if (length == 1 || length > 10) {
                return Integer.parseInt(str);
            }
            charAt = str.charAt(1);
            i = 2;
        } else if (length > 9) {
            return Integer.parseInt(str);
        }
        if (charAt > '9' || charAt < '0') {
            return Integer.parseInt(str);
        }
        int i2 = charAt - '0';
        int i3 = i2;
        if (i < length) {
            int i4 = i + 1;
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return Integer.parseInt(str);
            }
            int i5 = (i2 * 10) + (charAt2 - '0');
            i3 = i5;
            if (i4 < length) {
                int i6 = i4 + 1;
                char charAt3 = str.charAt(i4);
                if (charAt3 > '9' || charAt3 < '0') {
                    return Integer.parseInt(str);
                }
                int i7 = (i5 * 10) + (charAt3 - '0');
                i3 = i7;
                if (i6 < length) {
                    i3 = i7;
                    while (true) {
                        int i8 = i6 + 1;
                        char charAt4 = str.charAt(i6);
                        if (charAt4 > '9' || charAt4 < '0') {
                            break;
                        }
                        i3 = (i3 * 10) + (charAt4 - '0');
                        if (i8 >= length) {
                            break;
                        }
                        i6 = i8;
                    }
                    return Integer.parseInt(str);
                }
            }
        }
        int i9 = i3;
        if (z) {
            i9 = -i3;
        }
        return i9;
    }

    /* renamed from: g */
    public static int m7116g(char[] cArr, int i, int i2) {
        int i3 = cArr[(i + i2) - 1] - '0';
        int i4 = i3;
        int i5 = i;
        int i6 = i3;
        int i7 = i;
        int i8 = i3;
        int i9 = i;
        int i10 = i3;
        int i11 = i;
        int i12 = i3;
        int i13 = i;
        int i14 = i3;
        int i15 = i;
        int i16 = i3;
        int i17 = i;
        switch (i2) {
            case 9:
                i4 = i3 + ((cArr[i] - '0') * 100000000);
                i5 = i + 1;
            case 8:
                i6 = i4 + ((cArr[i5] - '0') * ExceptionCode.CRASH_EXCEPTION);
                i7 = i5 + 1;
            case 7:
                i8 = i6 + ((cArr[i7] - '0') * 1000000);
                i9 = i7 + 1;
            case 6:
                i10 = i8 + ((cArr[i9] - '0') * 100000);
                i11 = i9 + 1;
            case 5:
                i12 = i10 + ((cArr[i11] - '0') * 10000);
                i13 = i11 + 1;
            case 4:
                i14 = i12 + ((cArr[i13] - '0') * 1000);
                i15 = i13 + 1;
            case 3:
                i16 = i14 + ((cArr[i15] - '0') * 100);
                i17 = i15 + 1;
            case 2:
                i3 = i16 + ((cArr[i17] - '0') * 10);
                break;
        }
        return i3;
    }

    /* renamed from: h */
    public static long m7115h(String str) {
        return str.length() <= 9 ? m7117f(str) : Long.parseLong(str);
    }

    /* renamed from: i */
    public static long m7114i(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return (m7116g(cArr, i, i3) * 1000000000) + m7116g(cArr, i + i3, 9);
    }
}
