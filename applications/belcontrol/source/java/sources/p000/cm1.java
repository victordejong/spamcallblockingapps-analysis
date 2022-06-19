package p000;

import com.google.android.exoplayer2.C0515C;
import java.io.Closeable;
import java.net.IDN;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* renamed from: cm1 */
/* loaded from: classes3-dex2jar.jar:cm1.class */
public final class cm1 {

    /* renamed from: a */
    public static final byte[] f2395a;

    /* renamed from: b */
    public static final Charset f2396b = Charset.forName(C0515C.UTF8_NAME);

    static {
        byte[] bArr = new byte[0];
        f2395a = bArr;
        bm1.m5604e(null, bArr);
        zl1.m1a(null, bArr);
        fm1.m1699c("efbbbf");
        fm1.m1699c("feff");
        fm1.m1699c("fffe");
        fm1.m1699c("0000ffff");
        fm1.m1699c("ffff0000");
        Charset.forName("ISO-8859-1");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-32BE");
        Charset.forName("UTF-32LE");
        TimeZone.getTimeZone("GMT");
        try {
            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
        }
        Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: a */
    public static String m5303a(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (!m5300d(lowerCase)) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        InetAddress m5297g = (!str.startsWith("[") || !str.endsWith("]")) ? m5297g(str, 0, str.length()) : m5297g(str, 1, str.length() - 1);
        if (m5297g == null) {
            return null;
        }
        byte[] address = m5297g.getAddress();
        if (address.length == 16) {
            return m5294j(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    /* renamed from: b */
    public static void m5302b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: c */
    public static void m5301c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: d */
    public static boolean m5300d(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static int m5299e(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    return -1;
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: f */
    public static boolean m5298f(String str, int i, int i2, byte[] bArr, int i3) {
        char charAt;
        int i4 = i3;
        int i5 = i;
        while (i5 < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            int i6 = i5;
            if (i4 != i3) {
                if (str.charAt(i5) != '.') {
                    return false;
                }
                i6 = i5 + 1;
            }
            i5 = i6;
            int i7 = 0;
            while (i5 < i2 && (charAt = str.charAt(i5)) >= '0' && charAt <= '9') {
                if (i7 == 0 && i6 != i5) {
                    return false;
                }
                i7 = ((i7 * 10) + charAt) - 48;
                if (i7 > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i6 == 0) {
                return false;
            }
            bArr[i4] = (byte) i7;
            i4++;
        }
        return i4 == i3 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
        if (r14 == 16) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
        if (r15 != (-1)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0138, code lost:
        r0 = r14 - r15;
        java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
        java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015f, code lost:
        return java.net.InetAddress.getByAddress(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0168, code lost:
        throw new java.lang.AssertionError();
     */
    @javax.annotation.Nullable
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.InetAddress m5297g(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.cm1.m5297g(java.lang.String, int, int):java.net.InetAddress");
    }

    /* renamed from: h */
    public static int m5296h(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: i */
    public static int m5295i(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static String m5294j(byte[] bArr) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= bArr.length) {
                break;
            }
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            int i7 = i2;
            int i8 = i;
            if (i6 > i) {
                i7 = i2;
                i8 = i;
                if (i6 >= 4) {
                    i8 = i6;
                    i7 = i3;
                }
            }
            i3 = i5 + 2;
            i2 = i7;
            i4 = i8;
        }
        dm1 dm1Var = new dm1();
        int i9 = 0;
        while (i9 < bArr.length) {
            if (i9 == i2) {
                dm1Var.m2486F(58);
                int i10 = i9 + i;
                i9 = i10;
                if (i10 == 16) {
                    dm1Var.m2486F(58);
                    i9 = i10;
                }
            } else {
                if (i9 > 0) {
                    dm1Var.m2486F(58);
                }
                dm1Var.m2485G(((bArr[i9] & 255) << 8) | (bArr[i9 + 1] & 255));
                i9 += 2;
            }
        }
        return dm1Var.m2474y();
    }

    /* renamed from: k */
    public static int m5293k(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: l */
    public static int m5292l(String str, int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                char charAt = str.charAt(i2);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i2 + 1;
                }
            } else {
                return i;
            }
        }
    }
}
