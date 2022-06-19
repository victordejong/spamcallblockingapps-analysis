package okhttp3.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
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
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5406ad;
import p000a.AbstractC0007e;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0008f;
/* renamed from: okhttp3.internal.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/c.class */
public final class C5449c {

    /* renamed from: a */
    public static final byte[] f22756a = new byte[0];

    /* renamed from: b */
    public static final String[] f22757b = new String[0];

    /* renamed from: c */
    public static final AbstractC5406ad f22758c = AbstractC5406ad.m780a(null, f22756a);

    /* renamed from: d */
    public static final AbstractC5402ab f22759d = AbstractC5402ab.m812a(null, f22756a);

    /* renamed from: i */
    private static final C0008f f22764i = C0008f.m22534b("efbbbf");

    /* renamed from: j */
    private static final C0008f f22765j = C0008f.m22534b("feff");

    /* renamed from: k */
    private static final C0008f f22766k = C0008f.m22534b("fffe");

    /* renamed from: l */
    private static final C0008f f22767l = C0008f.m22534b("0000ffff");

    /* renamed from: m */
    private static final C0008f f22768m = C0008f.m22534b("ffff0000");

    /* renamed from: e */
    public static final Charset f22760e = Charset.forName("UTF-8");

    /* renamed from: f */
    public static final Charset f22761f = Charset.forName("ISO-8859-1");

    /* renamed from: n */
    private static final Charset f22769n = Charset.forName("UTF-16BE");

    /* renamed from: o */
    private static final Charset f22770o = Charset.forName("UTF-16LE");

    /* renamed from: p */
    private static final Charset f22771p = Charset.forName("UTF-32BE");

    /* renamed from: q */
    private static final Charset f22772q = Charset.forName("UTF-32LE");

    /* renamed from: g */
    public static final TimeZone f22762g = TimeZone.getTimeZone("GMT");

    /* renamed from: h */
    public static final Comparator<String> f22763h = new Comparator<String>() { // from class: okhttp3.internal.c.1
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };

    /* renamed from: r */
    private static final Pattern f22773r = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a */
    public static int m677a(char c) {
        return (c < '0' || c > '9') ? (c < 'a' || c > 'f') ? (c < 'A' || c > 'F') ? -1 : (c - 'A') + 10 : (c - 'a') + 10 : c - '0';
    }

    /* renamed from: a */
    public static int m669a(String str, int i, int i2) {
        int i3;
        while (true) {
            i3 = i2;
            if (i < i2) {
                switch (str.charAt(i)) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        i++;
                    default:
                        i3 = i;
                        break;
                }
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m668a(String str, int i, int i2, char c) {
        int i3;
        while (true) {
            i3 = i2;
            if (i >= i2) {
                break;
            } else if (str.charAt(i) == c) {
                i3 = i;
                break;
            } else {
                i++;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m667a(String str, int i, int i2, String str2) {
        int i3;
        while (true) {
            i3 = i2;
            if (i >= i2) {
                break;
            } else if (str2.indexOf(str.charAt(i)) != -1) {
                i3 = i;
                break;
            } else {
                i++;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m665a(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis == 0 && j > 0) {
            throw new IllegalArgumentException(str + " too small.");
        }
        return (int) millis;
    }

    /* renamed from: a */
    public static int m660a(Comparator<String> comparator, String[] strArr, String str) {
        int i = 0;
        int length = strArr.length;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (comparator.compare(strArr[i], str) == 0) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AssertionError m664a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException e) {
        }
        return assertionError;
    }

    /* renamed from: a */
    public static String m670a(String str) {
        String str2;
        if (str.contains(":")) {
            InetAddress m646d = (!str.startsWith("[") || !str.endsWith("]")) ? m646d(str, 0, str.length()) : m646d(str, 1, str.length() - 1);
            if (m646d == null) {
                str2 = null;
            } else {
                byte[] address = m646d.getAddress();
                if (address.length != 16) {
                    throw new AssertionError("Invalid IPv6 address: '" + str + "'");
                }
                str2 = m656a(address);
            }
        } else {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                str2 = null;
                if (!lowerCase.isEmpty()) {
                    str2 = null;
                    if (!m647d(lowerCase)) {
                        str2 = lowerCase;
                    }
                }
            } catch (IllegalArgumentException e) {
                str2 = null;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m662a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
        if (r3.m247g() != okhttp3.C5541t.m266a(r3.m257b())) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m657a(okhttp3.C5541t r3, boolean r4) {
        /*
            r0 = r3
            java.lang.String r0 = r0.m248f()
            java.lang.String r1 = ":"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L59
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            java.lang.String r1 = "["
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r3
            java.lang.String r1 = r1.m248f()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5 = r0
        L28:
            r0 = r4
            if (r0 != 0) goto L3c
            r0 = r5
            r6 = r0
            r0 = r3
            int r0 = r0.m247g()
            r1 = r3
            java.lang.String r1 = r1.m257b()
            int r1 = okhttp3.C5541t.m266a(r1)
            if (r0 == r1) goto L57
        L3c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = ":"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r3
            int r1 = r1.m247g()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r6 = r0
        L57:
            r0 = r6
            return r0
        L59:
            r0 = r3
            java.lang.String r0 = r0.m248f()
            r5 = r0
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.C5449c.m657a(okhttp3.t, boolean):java.lang.String");
    }

    /* renamed from: a */
    private static String m656a(byte[] bArr) {
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < bArr.length) {
            int i4 = i2;
            while (i4 < 16 && bArr[i4] == 0 && bArr[i4 + 1] == 0) {
                i4 += 2;
            }
            int i5 = i4 - i2;
            int i6 = i3;
            int i7 = i;
            if (i5 > i3) {
                i6 = i3;
                i7 = i;
                if (i5 >= 4) {
                    i6 = i5;
                    i7 = i2;
                }
            }
            i2 = i4 + 2;
            i3 = i6;
            i = i7;
        }
        C0005c c0005c = new C0005c();
        int i8 = 0;
        while (i8 < bArr.length) {
            if (i8 == i) {
                c0005c.mo22508i(58);
                int i9 = i8 + i3;
                i8 = i9;
                if (i9 == 16) {
                    c0005c.mo22508i(58);
                    i8 = i9;
                }
            } else {
                if (i8 > 0) {
                    c0005c.mo22508i(58);
                }
                c0005c.mo22507k(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255));
                i8 += 2;
            }
        }
        return c0005c.m22546n();
    }

    /* renamed from: a */
    public static Charset m675a(AbstractC0007e abstractC0007e, Charset charset) {
        if (abstractC0007e.mo22501a(0L, f22764i)) {
            abstractC0007e.mo22488h(f22764i.mo22462g());
            charset = f22760e;
        } else if (abstractC0007e.mo22501a(0L, f22765j)) {
            abstractC0007e.mo22488h(f22765j.mo22462g());
            charset = f22769n;
        } else if (abstractC0007e.mo22501a(0L, f22766k)) {
            abstractC0007e.mo22488h(f22766k.mo22462g());
            charset = f22770o;
        } else if (abstractC0007e.mo22501a(0L, f22767l)) {
            abstractC0007e.mo22488h(f22767l.mo22462g());
            charset = f22771p;
        } else if (abstractC0007e.mo22501a(0L, f22768m)) {
            abstractC0007e.mo22488h(f22768m.mo22462g());
            charset = f22772q;
        }
        return charset;
    }

    /* renamed from: a */
    public static <T> List<T> m658a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m655a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static ThreadFactory m663a(final String str, final boolean z) {
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
    public static void m676a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m673a(Closeable closeable) {
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
    public static void m661a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (m672a(e)) {
                    return;
                }
                throw e;
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m674a(AbstractC0024s abstractC0024s, int i, TimeUnit timeUnit) {
        boolean z;
        try {
            z = m653b(abstractC0024s, i, timeUnit);
        } catch (IOException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m672a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m671a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    private static boolean m666a(String str, int i, int i2, byte[] bArr, int i3) {
        boolean z;
        char charAt;
        int i4 = i3;
        int i5 = i;
        loop0: while (true) {
            if (i5 >= i2) {
                z = i4 == i3 + 4;
            } else if (i4 == bArr.length) {
                z = false;
                break;
            } else {
                int i6 = i5;
                if (i4 != i3) {
                    if (str.charAt(i5) != '.') {
                        z = false;
                        break;
                    }
                    i6 = i5 + 1;
                }
                int i7 = 0;
                i5 = i6;
                while (i5 < i2 && (charAt = str.charAt(i5)) >= '0' && charAt <= '9') {
                    if (i7 == 0 && i6 != i5) {
                        z = false;
                        break loop0;
                    }
                    i7 = ((i7 * 10) + charAt) - 48;
                    if (i7 > 255) {
                        z = false;
                        break loop0;
                    }
                    i5++;
                }
                if (i5 - i6 == 0) {
                    z = false;
                    break;
                }
                bArr[i4] = (byte) i7;
                i4++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static String[] m659a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
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
    public static String[] m654a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m652b(String str) {
        int i;
        int i2 = 0;
        int length = str.length();
        while (true) {
            if (i2 >= length) {
                i = -1;
                break;
            }
            char charAt = str.charAt(i2);
            i = i2;
            if (charAt <= 31) {
                break;
            } else if (charAt >= 127) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static int m651b(String str, int i, int i2) {
        int i3;
        while (true) {
            i2--;
            i3 = i;
            if (i2 >= i) {
                switch (str.charAt(i2)) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    default:
                        i3 = i2 + 1;
                        break;
                }
            }
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: b */
    public static boolean m653b(AbstractC0024s abstractC0024s, int i, TimeUnit timeUnit) {
        boolean z;
        long nanoTime = System.nanoTime();
        char mo22456d = abstractC0024s.mo405a().mo22458I_() ? abstractC0024s.mo405a().mo22456d() - nanoTime : (char) 65535;
        abstractC0024s.mo405a().mo22454a(Math.min((long) mo22456d, timeUnit.toNanos(i)) + nanoTime);
        try {
            C0005c c0005c = new C0005c();
            while (abstractC0024s.mo90a(c0005c, 8192L) != -1) {
                c0005c.m22544q();
            }
            if (mo22456d == Long.MAX_VALUE) {
                abstractC0024s.mo405a().mo22455f();
            } else {
                abstractC0024s.mo405a().mo22454a(mo22456d + nanoTime);
            }
            z = true;
        } catch (InterruptedIOException e) {
            if (mo22456d == Long.MAX_VALUE) {
                abstractC0024s.mo405a().mo22455f();
            } else {
                abstractC0024s.mo405a().mo22454a(mo22456d + nanoTime);
            }
            z = false;
        } catch (Throwable th) {
            if (mo22456d == Long.MAX_VALUE) {
                abstractC0024s.mo405a().mo22455f();
            } else {
                abstractC0024s.mo405a().mo22454a(mo22456d + nanoTime);
            }
            throw th;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m650b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        boolean z = false;
        if (strArr != null) {
            z = false;
            if (strArr2 != null) {
                z = false;
                if (strArr.length != 0) {
                    if (strArr2.length != 0) {
                        int length = strArr.length;
                        int i = 0;
                        loop0: while (true) {
                            z = false;
                            if (i >= length) {
                                break;
                            }
                            String str = strArr[i];
                            for (String str2 : strArr2) {
                                if (comparator.compare(str, str2) == 0) {
                                    z = true;
                                    break loop0;
                                }
                            }
                            i++;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public static String m648c(String str, int i, int i2) {
        int m669a = m669a(str, i, i2);
        return str.substring(m669a, m651b(str, m669a, i2));
    }

    /* renamed from: c */
    public static boolean m649c(String str) {
        return f22773r.matcher(str).matches();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        if (r15 == r0.length) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
        if (r14 != (-1)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b3, code lost:
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x012e, code lost:
        java.lang.System.arraycopy(r0, r14, r0, r0.length - (r15 - r14), r15 - r14);
        java.util.Arrays.fill(r0, r14, (r0.length - r15) + r14, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0151, code lost:
        r7 = java.net.InetAddress.getByAddress(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0161, code lost:
        throw new java.lang.AssertionError();
     */
    @javax.annotation.Nullable
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress m646d(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.C5449c.m646d(java.lang.String, int, int):java.net.InetAddress");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        r6 = true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m647d(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
        L4:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r3
            int r1 = r1.length()
            if (r0 >= r1) goto L25
            r0 = r3
            r1 = r5
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r7
            r1 = 31
            if (r0 <= r1) goto L23
            r0 = r7
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 < r1) goto L27
        L23:
            r0 = 1
            r6 = r0
        L25:
            r0 = r6
            return r0
        L27:
            java.lang.String r0 = " #%/:?@[\\]"
            r1 = r7
            int r0 = r0.indexOf(r1)
            r1 = -1
            if (r0 == r1) goto L38
            r0 = 1
            r6 = r0
            goto L25
        L38:
            int r5 = r5 + 1
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.C5449c.m647d(java.lang.String):boolean");
    }
}
