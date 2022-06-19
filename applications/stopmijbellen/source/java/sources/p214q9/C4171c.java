package p214q9;

import android.support.p012v4.media.C0082b;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0056i;
import p204p9.AbstractC4096d0;
import p204p9.C4093c0;
import p204p9.C4121r;
import p268v9.C4659a;
/* renamed from: q9.c */
/* loaded from: classes2-dex2jar.jar:q9/c.class */
public final class C4171c {

    /* renamed from: a */
    public static final byte[] f13144a;

    /* renamed from: c */
    public static final AbstractC4096d0 f13146c;

    /* renamed from: g */
    public static final Method f13150g;

    /* renamed from: h */
    public static final Pattern f13151h;

    /* renamed from: b */
    public static final String[] f13145b = new String[0];

    /* renamed from: d */
    public static final Charset f13147d = Charset.forName("UTF-8");

    /* renamed from: e */
    public static final TimeZone f13148e = TimeZone.getTimeZone("GMT");

    /* renamed from: f */
    public static final Comparator<String> f13149f = new C4172a();

    /* renamed from: q9.c$a */
    /* loaded from: classes2-dex2jar.jar:q9/c$a.class */
    public class C4172a implements Comparator<String> {
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    static {
        byte[] bArr = new byte[0];
        f13144a = bArr;
        C0053f c0053f = new C0053f();
        c0053f.m8857P(bArr);
        Method method = null;
        f13146c = new C4093c0(null, bArr.length, c0053f);
        m1333c(bArr.length, 0, bArr.length);
        C0056i.m8838c("efbbbf");
        C0056i.m8838c("feff");
        C0056i.m8838c("fffe");
        C0056i.m8838c("0000ffff");
        C0056i.m8838c("ffff0000");
        Charset.forName("ISO-8859-1");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-32BE");
        Charset.forName("UTF-32LE");
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
        }
        f13150g = method;
        f13151h = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    /* renamed from: a */
    public static AssertionError m1335a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException e) {
        }
        return assertionError;
    }

    /* renamed from: b */
    public static String m1334b(String str) {
        boolean z;
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                int i = 0;
                while (true) {
                    if (i >= lowerCase.length()) {
                        z = false;
                        break;
                    }
                    char charAt = lowerCase.charAt(i);
                    z = true;
                    if (charAt <= 31) {
                        break;
                    } else if (charAt >= 127) {
                        z = true;
                        break;
                    } else if (" #%/:?@[\\]".indexOf(charAt) != -1) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        InetAddress m1329g = (!str.startsWith("[") || !str.endsWith("]")) ? m1329g(str, 0, str.length()) : m1329g(str, 1, str.length() - 1);
        if (m1329g == null) {
            return null;
        }
        byte[] address = m1329g.getAddress();
        if (address.length != 16) {
            throw new AssertionError(C0082b.m8755g("Invalid IPv6 address: '", str, "'"));
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (i2 < address.length) {
            int i5 = i2;
            while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i2;
            int i7 = i4;
            int i8 = i3;
            if (i6 > i3) {
                i7 = i4;
                i8 = i3;
                if (i6 >= 4) {
                    i8 = i6;
                    i7 = i2;
                }
            }
            i2 = i5 + 2;
            i4 = i7;
            i3 = i8;
        }
        C0053f c0053f = new C0053f();
        int i9 = 0;
        while (i9 < address.length) {
            if (i9 == i4) {
                c0053f.m8854Y(58);
                int i10 = i9 + i3;
                i9 = i10;
                if (i10 == 16) {
                    c0053f.m8854Y(58);
                    i9 = i10;
                }
            } else {
                if (i9 > 0) {
                    c0053f.m8854Y(58);
                }
                c0053f.mo8818g(((address[i9] & 255) << 8) | (address[i9 + 1] & 255));
                i9 += 2;
            }
        }
        return c0053f.m8861D();
    }

    /* renamed from: c */
    public static void m1333c(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: d */
    public static void m1332d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: e */
    public static void m1331e(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m1318r(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: f */
    public static int m1330f(char c) {
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

    @Nullable
    /* renamed from: g */
    public static InetAddress m1329g(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int m1330f;
        boolean z;
        char charAt;
        byte[] bArr = new byte[16];
        int i8 = i;
        int i9 = 0;
        int i10 = -1;
        int i11 = -1;
        while (true) {
            i3 = i9;
            i4 = i10;
            if (i8 >= i2) {
                break;
            } else if (i9 == 16) {
                return null;
            } else {
                int i12 = i8 + 2;
                if (i12 <= i2 && str.regionMatches(i8, "::", 0, 2)) {
                    if (i10 != -1) {
                        return null;
                    }
                    i3 = i9 + 2;
                    if (i12 == i2) {
                        i4 = i3;
                        break;
                    }
                    i11 = i12;
                    i10 = i3;
                    i5 = i11;
                    i6 = 0;
                    while (i5 < i2) {
                        i6 = (i6 << 4) + m1330f;
                        i5++;
                    }
                    i7 = i5 - i11;
                    return i7 == 0 ? null : null;
                }
                int i13 = i8;
                if (i9 != 0) {
                    if (str.regionMatches(i8, ":", 0, 1)) {
                        i13 = i8 + 1;
                    } else if (!str.regionMatches(i8, ".", 0, 1)) {
                        return null;
                    } else {
                        int i14 = i9 - 2;
                        int i15 = i14;
                        int i16 = i11;
                        loop1: while (true) {
                            if (i16 < i2) {
                                if (i15 == 16) {
                                    break;
                                }
                                int i17 = i16;
                                if (i15 != i14) {
                                    if (str.charAt(i16) != '.') {
                                        break;
                                    }
                                    i17 = i16 + 1;
                                }
                                i16 = i17;
                                int i18 = 0;
                                while (i16 < i2 && (charAt = str.charAt(i16)) >= '0' && charAt <= '9') {
                                    if (i18 == 0 && i17 != i16) {
                                        break loop1;
                                    }
                                    i18 = ((i18 * 10) + charAt) - 48;
                                    if (i18 > 255) {
                                        break loop1;
                                    }
                                    i16++;
                                }
                                if (i16 - i17 == 0) {
                                    break;
                                }
                                bArr[i15] = (byte) i18;
                                i15++;
                            } else if (i15 == i14 + 4) {
                                z = true;
                            }
                        }
                        z = false;
                        if (!z) {
                            return null;
                        }
                        i3 = i9 + 2;
                        i4 = i10;
                    }
                }
                i11 = i13;
                i3 = i9;
                i5 = i11;
                i6 = 0;
                while (i5 < i2 && (m1330f = m1330f(str.charAt(i5))) != -1) {
                    i6 = (i6 << 4) + m1330f;
                    i5++;
                }
                i7 = i5 - i11;
                if (i7 == 0 && i7 <= 4) {
                    int i19 = i3 + 1;
                    bArr[i3] = (byte) ((i6 >>> 8) & 255);
                    bArr[i19] = (byte) (i6 & 255);
                    i8 = i5;
                    i9 = i19 + 1;
                }
            }
        }
        if (i3 != 16) {
            if (i4 == -1) {
                return null;
            }
            int i20 = i3 - i4;
            System.arraycopy(bArr, i4, bArr, 16 - i20, i20);
            Arrays.fill(bArr, i4, (16 - i3) + i4, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError();
        }
    }

    /* renamed from: h */
    public static int m1328h(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: i */
    public static int m1327i(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static boolean m1326j(AbstractC0074y abstractC0074y, int i, TimeUnit timeUnit) {
        try {
            return m1316t(abstractC0074y, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: k */
    public static boolean m1325k(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: l */
    public static String m1324l(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r4.f12959e != p204p9.C4123s.m1389c(r4.f12955a)) goto L10;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1323m(p204p9.C4123s r4, boolean r5) {
        /*
            r0 = r4
            java.lang.String r0 = r0.f12958d
            java.lang.String r1 = ":"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L1e
            java.lang.String r0 = "["
            java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
            r1 = r4
            java.lang.String r1 = r1.f12958d
            java.lang.String r2 = "]"
            java.lang.String r0 = android.support.p012v4.media.C0082b.m8754h(r0, r1, r2)
            r6 = r0
            goto L23
        L1e:
            r0 = r4
            java.lang.String r0 = r0.f12958d
            r6 = r0
        L23:
            r0 = r5
            if (r0 != 0) goto L37
            r0 = r6
            r7 = r0
            r0 = r4
            int r0 = r0.f12959e
            r1 = r4
            java.lang.String r1 = r1.f12955a
            int r1 = p204p9.C4123s.m1389c(r1)
            if (r0 == r1) goto L4c
        L37:
            r0 = r6
            java.lang.String r1 = ":"
            java.lang.StringBuilder r0 = androidx.recyclerview.widget.C0608b.m7624k(r0, r1)
            r6 = r0
            r0 = r6
            r1 = r4
            int r1 = r1.f12959e
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r7 = r0
        L4c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p214q9.C4171c.m1323m(p9.s, boolean):java.lang.String");
    }

    /* renamed from: n */
    public static <T> List<T> m1322n(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: o */
    public static <T> List<T> m1321o(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: p */
    public static int m1320p(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: q */
    public static String[] m1319q(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: r */
    public static boolean m1318r(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: s */
    public static boolean m1317s(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: t */
    public static boolean m1316t(AbstractC0074y abstractC0074y, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        char mo8775c = abstractC0074y.mo610b().mo8774e() ? abstractC0074y.mo610b().mo8775c() - nanoTime : (char) 65535;
        abstractC0074y.mo610b().mo8773d(Math.min((long) mo8775c, timeUnit.toNanos(i)) + nanoTime);
        try {
            C0053f c0053f = new C0053f();
            while (abstractC0074y.mo609f(c0053f, 8192L) != -1) {
                c0053f.m8849d();
            }
            if (mo8775c == Long.MAX_VALUE) {
                abstractC0074y.mo610b().mo8777a();
                return true;
            }
            abstractC0074y.mo610b().mo8773d(nanoTime + mo8775c);
            return true;
        } catch (InterruptedIOException e) {
            if (mo8775c == Long.MAX_VALUE) {
                abstractC0074y.mo610b().mo8777a();
                return false;
            }
            abstractC0074y.mo610b().mo8773d(nanoTime + mo8775c);
            return false;
        } catch (Throwable th) {
            if (mo8775c == Long.MAX_VALUE) {
                abstractC0074y.mo610b().mo8777a();
            } else {
                abstractC0074y.mo610b().mo8773d(nanoTime + mo8775c);
            }
            throw th;
        }
    }

    /* renamed from: u */
    public static int m1315u(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: v */
    public static int m1314v(String str, int i, int i2) {
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

    /* renamed from: w */
    public static C4121r m1313w(List<C4659a> list) {
        C4121r.C4122a c4122a = new C4121r.C4122a();
        for (C4659a c4659a : list) {
            AbstractC4169a.f13142a.mo1339a(c4122a, c4659a.f14363a.mo8782o(), c4659a.f14364b.mo8782o());
        }
        return new C4121r(c4122a);
    }

    /* renamed from: x */
    public static String m1312x(String str, int i, int i2) {
        int m1315u = m1315u(str, i, i2);
        return str.substring(m1315u, m1314v(str, m1315u, i2));
    }
}
