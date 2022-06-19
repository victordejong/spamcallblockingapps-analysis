package okhttp3.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
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
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.AbstractC1953aa;
import okhttp3.AbstractC1957ac;
import okhttp3.C2094u;
import p000a.AbstractC0008e;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0009f;
/* renamed from: okhttp3.internal.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/c.class */
public final class C1999c {

    /* renamed from: a */
    public static final byte[] f4982a = new byte[0];

    /* renamed from: b */
    public static final String[] f4983b = new String[0];

    /* renamed from: c */
    public static final AbstractC1957ac f4984c = AbstractC1957ac.m2463a(null, f4982a);

    /* renamed from: d */
    public static final AbstractC1953aa f4985d = AbstractC1953aa.m2496a((C2094u) null, f4982a);

    /* renamed from: i */
    private static final C0009f f4990i = C0009f.m8110b("efbbbf");

    /* renamed from: j */
    private static final C0009f f4991j = C0009f.m8110b("feff");

    /* renamed from: k */
    private static final C0009f f4992k = C0009f.m8110b("fffe");

    /* renamed from: l */
    private static final C0009f f4993l = C0009f.m8110b("0000ffff");

    /* renamed from: m */
    private static final C0009f f4994m = C0009f.m8110b("ffff0000");

    /* renamed from: e */
    public static final Charset f4986e = Charset.forName("UTF-8");

    /* renamed from: f */
    public static final Charset f4987f = Charset.forName("ISO-8859-1");

    /* renamed from: n */
    private static final Charset f4995n = Charset.forName("UTF-16BE");

    /* renamed from: o */
    private static final Charset f4996o = Charset.forName("UTF-16LE");

    /* renamed from: p */
    private static final Charset f4997p = Charset.forName("UTF-32BE");

    /* renamed from: q */
    private static final Charset f4998q = Charset.forName("UTF-32LE");

    /* renamed from: g */
    public static final TimeZone f4988g = TimeZone.getTimeZone("GMT");

    /* renamed from: h */
    public static final Comparator<String> f4989h = new Comparator<String>() { // from class: okhttp3.internal.c.1
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };

    /* renamed from: r */
    private static final Pattern f4999r = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a */
    public static int m2357a(char c) {
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

    /* renamed from: a */
    public static int m2349a(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m2348a(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m2347a(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m2345a(String str, long j, TimeUnit timeUnit) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException(str + " < 0");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        } else {
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            } else if (millis != 0 || i <= 0) {
                return (int) millis;
            } else {
                throw new IllegalArgumentException(str + " too small.");
            }
        }
    }

    /* renamed from: a */
    public static int m2340a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static AssertionError m2344a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException e) {
        }
        return assertionError;
    }

    /* renamed from: a */
    public static String m2350a(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (!m2327d(lowerCase)) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        InetAddress m2326d = (!str.startsWith("[") || !str.endsWith("]")) ? m2326d(str, 0, str.length()) : m2326d(str, 1, str.length() - 1);
        if (m2326d == null) {
            return null;
        }
        byte[] address = m2326d.getAddress();
        if (address.length == 16) {
            return m2336a(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    /* renamed from: a */
    public static String m2342a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0049, code lost:
        if (r3.m1933h() != okhttp3.C2089s.m1952a(r3.m1941c())) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2337a(okhttp3.C2089s r3, boolean r4) {
        /*
            r0 = r3
            java.lang.String r0 = r0.m1934g()
            java.lang.String r1 = ":"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L33
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.m1934g()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r5 = r0
            goto L38
        L33:
            r0 = r3
            java.lang.String r0 = r0.m1934g()
            r5 = r0
        L38:
            r0 = r4
            if (r0 != 0) goto L4c
            r0 = r5
            r6 = r0
            r0 = r3
            int r0 = r0.m1933h()
            r1 = r3
            java.lang.String r1 = r1.m1941c()
            int r1 = okhttp3.C2089s.m1952a(r1)
            if (r0 == r1) goto L6f
        L4c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ":"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r3
            int r1 = r1.m1933h()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
        L6f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.C1999c.m2337a(okhttp3.s, boolean):java.lang.String");
    }

    /* renamed from: a */
    private static String m2336a(byte[] bArr) {
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        while (i3 < bArr.length) {
            int i4 = i3;
            while (i4 < 16 && bArr[i4] == 0 && bArr[i4 + 1] == 0) {
                i4 += 2;
            }
            int i5 = i4 - i3;
            int i6 = i2;
            int i7 = i;
            if (i5 > i) {
                i6 = i2;
                i7 = i;
                if (i5 >= 4) {
                    i7 = i5;
                    i6 = i3;
                }
            }
            i3 = i4 + 2;
            i2 = i6;
            i = i7;
        }
        C0005c c0005c = new C0005c();
        int i8 = 0;
        while (i8 < bArr.length) {
            if (i8 == i2) {
                c0005c.mo8084i(58);
                int i9 = i8 + i;
                i8 = i9;
                if (i9 == 16) {
                    c0005c.mo8084i(58);
                    i8 = i9;
                }
            } else {
                if (i8 > 0) {
                    c0005c.mo8084i(58);
                }
                c0005c.mo8083k(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255));
                i8 += 2;
            }
        }
        return c0005c.m8121o();
    }

    /* renamed from: a */
    public static Charset m2355a(AbstractC0008e abstractC0008e, Charset charset) {
        if (abstractC0008e.mo8077a(0L, f4990i)) {
            abstractC0008e.mo8065h(f4990i.mo8038g());
            return f4986e;
        } else if (abstractC0008e.mo8077a(0L, f4991j)) {
            abstractC0008e.mo8065h(f4991j.mo8038g());
            return f4995n;
        } else if (abstractC0008e.mo8077a(0L, f4992k)) {
            abstractC0008e.mo8065h(f4992k.mo8038g());
            return f4996o;
        } else if (abstractC0008e.mo8077a(0L, f4993l)) {
            abstractC0008e.mo8065h(f4993l.mo8038g());
            return f4997p;
        } else if (!abstractC0008e.mo8077a(0L, f4994m)) {
            return charset;
        } else {
            abstractC0008e.mo8065h(f4994m.mo8038g());
            return f4998q;
        }
    }

    /* renamed from: a */
    public static <T> List<T> m2338a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m2335a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static ThreadFactory m2343a(final String str, final boolean z) {
        return new ThreadFactory() { // from class: okhttp3.internal.c.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    /* renamed from: a */
    public static void m2356a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m2353a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m2341a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m2352a(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m2354a(AbstractC0026s abstractC0026s, int i, TimeUnit timeUnit) {
        try {
            return m2333b(abstractC0026s, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m2352a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m2351a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    private static boolean m2346a(String str, int i, int i2, byte[] bArr, int i3) {
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

    /* renamed from: a */
    public static String[] m2339a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
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

    /* renamed from: a */
    public static String[] m2334a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m2332b(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static int m2331b(String str, int i, int i2) {
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

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: b */
    public static boolean m2333b(AbstractC0026s abstractC0026s, int i, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        char mo8035d = abstractC0026s.mo2088a().mo8032q_() ? abstractC0026s.mo2088a().mo8035d() - nanoTime : (char) 65535;
        abstractC0026s.mo2088a().mo8030a(Math.min((long) mo8035d, timeUnit.toNanos(i)) + nanoTime);
        try {
            C0005c c0005c = new C0005c();
            while (abstractC0026s.mo2087a(c0005c, 8192L) != -1) {
                c0005c.m8119r();
            }
            if (mo8035d == Long.MAX_VALUE) {
                abstractC0026s.mo2088a().mo8034f();
                return true;
            }
            abstractC0026s.mo2088a().mo8030a(nanoTime + mo8035d);
            return true;
        } catch (InterruptedIOException e) {
            if (mo8035d == Long.MAX_VALUE) {
                abstractC0026s.mo2088a().mo8034f();
                return false;
            }
            abstractC0026s.mo2088a().mo8030a(nanoTime + mo8035d);
            return false;
        } catch (Throwable th) {
            if (mo8035d == Long.MAX_VALUE) {
                abstractC0026s.mo2088a().mo8034f();
            } else {
                abstractC0026s.mo2088a().mo8030a(nanoTime + mo8035d);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m2330b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
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

    /* renamed from: c */
    public static String m2328c(String str, int i, int i2) {
        int m2349a = m2349a(str, i, i2);
        return str.substring(m2349a, m2331b(str, m2349a, i2));
    }

    /* renamed from: c */
    public static boolean m2329c(String str) {
        return f4999r.matcher(str).matches();
    }

    @Nullable
    /* renamed from: d */
    private static InetAddress m2326d(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m2357a;
        byte[] bArr = new byte[16];
        int i9 = -1;
        int i10 = -1;
        int i11 = 0;
        while (true) {
            i3 = i11;
            i4 = i9;
            if (i >= i2) {
                break;
            } else if (i11 == bArr.length) {
                return null;
            } else {
                int i12 = i + 2;
                if (i12 <= i2 && str.regionMatches(i, "::", 0, 2)) {
                    if (i9 != -1) {
                        return null;
                    }
                    i3 = i11 + 2;
                    if (i12 == i2) {
                        i4 = i3;
                        break;
                    }
                    i11 = i3;
                    i9 = i3;
                    i5 = i12;
                    i6 = 0;
                    i7 = i5;
                    while (i7 < i2) {
                        i6 = (i6 << 4) + m2357a;
                        i7++;
                    }
                    i8 = i7 - i5;
                    return i8 == 0 ? null : null;
                }
                int i13 = i;
                if (i11 != 0) {
                    if (str.regionMatches(i, ":", 0, 1)) {
                        i13 = i + 1;
                    } else if (!str.regionMatches(i, ".", 0, 1) || !m2346a(str, i10, i2, bArr, i11 - 2)) {
                        return null;
                    } else {
                        i3 = i11 + 2;
                        i4 = i9;
                    }
                }
                i5 = i13;
                i6 = 0;
                i7 = i5;
                while (i7 < i2 && (m2357a = m2357a(str.charAt(i7))) != -1) {
                    i6 = (i6 << 4) + m2357a;
                    i7++;
                }
                i8 = i7 - i5;
                if (i8 == 0 && i8 <= 4) {
                    int i14 = i11 + 1;
                    bArr[i11] = (byte) ((i6 >>> 8) & 255);
                    i11 = i14 + 1;
                    bArr[i14] = (byte) (i6 & 255);
                    i10 = i5;
                    i = i7;
                }
            }
        }
        if (i3 != bArr.length) {
            if (i4 == -1) {
                return null;
            }
            int length = bArr.length;
            int i15 = i3 - i4;
            System.arraycopy(bArr, i4, bArr, length - i15, i15);
            Arrays.fill(bArr, i4, (bArr.length - i3) + i4, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError();
        }
    }

    /* renamed from: d */
    private static boolean m2327d(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
