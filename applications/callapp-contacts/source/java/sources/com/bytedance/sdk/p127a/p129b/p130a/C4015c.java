package com.bytedance.sdk.p127a.p129b.p130a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.AbstractC4148z;
import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.C4139u;
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
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* renamed from: com.bytedance.sdk.a.b.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c.class */
public final class C4015c {

    /* renamed from: a */
    public static final byte[] f14574a;

    /* renamed from: c */
    public static final AbstractC4100ab f14576c;

    /* renamed from: d */
    public static final AbstractC4148z f14577d;

    /* renamed from: b */
    public static final String[] f14575b = new String[0];

    /* renamed from: i */
    private static final C3973f f14582i = C3973f.m37097b("efbbbf");

    /* renamed from: j */
    private static final C3973f f14583j = C3973f.m37097b("feff");

    /* renamed from: k */
    private static final C3973f f14584k = C3973f.m37097b("fffe");

    /* renamed from: l */
    private static final C3973f f14585l = C3973f.m37097b("0000ffff");

    /* renamed from: m */
    private static final C3973f f14586m = C3973f.m37097b("ffff0000");

    /* renamed from: e */
    public static final Charset f14578e = Charset.forName("UTF-8");

    /* renamed from: f */
    public static final Charset f14579f = Charset.forName("ISO-8859-1");

    /* renamed from: n */
    private static final Charset f14587n = Charset.forName("UTF-16BE");

    /* renamed from: o */
    private static final Charset f14588o = Charset.forName("UTF-16LE");

    /* renamed from: p */
    private static final Charset f14589p = Charset.forName("UTF-32BE");

    /* renamed from: q */
    private static final Charset f14590q = Charset.forName("UTF-32LE");

    /* renamed from: g */
    public static final TimeZone f14580g = TimeZone.getTimeZone("GMT");

    /* renamed from: h */
    public static final Comparator<String> f14581h = new Comparator<String>() { // from class: com.bytedance.sdk.a.b.a.c.1
        /* renamed from: a */
        public final int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };

    /* renamed from: r */
    private static final Pattern f14591r = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    static {
        byte[] bArr = new byte[0];
        f14574a = bArr;
        f14576c = AbstractC4100ab.m36582a(null, bArr);
        f14577d = AbstractC4148z.m36316a((C4139u) null, bArr);
    }

    /* renamed from: a */
    public static int m36919a(char c) {
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
    public static int m36910a(String str, int i, int i2) {
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
    public static int m36909a(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m36908a(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m36906a(String str, long j, TimeUnit timeUnit) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        Objects.requireNonNull(timeUnit, "unit == null");
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        } else if (millis != 0 || i <= 0) {
            return (int) millis;
        } else {
            throw new IllegalArgumentException(str + " too small.");
        }
    }

    /* renamed from: a */
    public static int m36901a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static AssertionError m36905a(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    /* renamed from: a */
    public static String m36915a(C4134s c4134s, boolean z) {
        String str;
        if (c4134s.m36435f().contains(":")) {
            str = "[" + c4134s.m36435f() + "]";
        } else {
            str = c4134s.m36435f();
        }
        if (z || c4134s.m36434g() != C4134s.m36453a(c4134s.m36444b())) {
            return str + ":" + c4134s.m36434g();
        }
        return str;
    }

    /* renamed from: a */
    public static String m36911a(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (!m36889d(lowerCase)) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        InetAddress m36888d = (!str.startsWith("[") || !str.endsWith("]")) ? m36888d(str, 0, str.length()) : m36888d(str, 1, str.length() - 1);
        if (m36888d == null) {
            return null;
        }
        byte[] address = m36888d.getAddress();
        if (address.length == 16) {
            return m36898a(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    /* renamed from: a */
    public static String m36903a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: a */
    private static String m36898a(byte[] bArr) {
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
        C3969c c3969c = new C3969c();
        int i9 = 0;
        while (i9 < bArr.length) {
            if (i9 == i2) {
                c3969c.mo37072i(58);
                int i10 = i9 + i;
                i9 = i10;
                if (i10 == 16) {
                    c3969c.mo37072i(58);
                    i9 = i10;
                }
            } else {
                if (i9 > 0) {
                    c3969c.mo37072i(58);
                }
                c3969c.mo37071k(((bArr[i9] & 255) << 8) | (bArr[i9 + 1] & 255));
                i9 += 2;
            }
        }
        return c3969c.m37108o();
    }

    /* renamed from: a */
    public static Charset m36917a(AbstractC3972e abstractC3972e, Charset charset) throws IOException {
        C3973f c3973f = f14582i;
        if (abstractC3972e.mo37065a(0L, c3973f)) {
            abstractC3972e.mo37053h(c3973f.mo37026g());
            return f14578e;
        }
        C3973f c3973f2 = f14583j;
        if (abstractC3972e.mo37065a(0L, c3973f2)) {
            abstractC3972e.mo37053h(c3973f2.mo37026g());
            return f14587n;
        }
        C3973f c3973f3 = f14584k;
        if (abstractC3972e.mo37065a(0L, c3973f3)) {
            abstractC3972e.mo37053h(c3973f3.mo37026g());
            return f14588o;
        }
        C3973f c3973f4 = f14585l;
        if (abstractC3972e.mo37065a(0L, c3973f4)) {
            abstractC3972e.mo37053h(c3973f4.mo37026g());
            return f14589p;
        }
        C3973f c3973f5 = f14586m;
        if (!abstractC3972e.mo37065a(0L, c3973f5)) {
            return charset;
        }
        abstractC3972e.mo37053h(c3973f5.mo37026g());
        return f14590q;
    }

    /* renamed from: a */
    public static <T> List<T> m36899a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: a */
    public static <T> List<T> m36897a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: a */
    public static ThreadFactory m36904a(final String str, final boolean z) {
        return new ThreadFactory() { // from class: com.bytedance.sdk.a.b.a.c.2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "tt_pangle_thread_" + str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    /* renamed from: a */
    public static void m36918a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: a */
    public static void m36914a(Closeable closeable) {
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
    public static void m36902a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m36913a(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m36916a(AbstractC3990s abstractC3990s, int i, TimeUnit timeUnit) {
        try {
            return m36895b(abstractC3990s, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m36913a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m36912a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m36907a(String str, int i, int i2, byte[] bArr, int i3) {
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
    public static String[] m36900a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
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
    public static String[] m36896a(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    /* renamed from: b */
    public static int m36894b(String str) {
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
    public static int m36893b(String str, int i, int i2) {
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
    public static boolean m36895b(AbstractC3990s abstractC3990s, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        char mo37021c_ = abstractC3990s.mo36720a().mo37022c() ? abstractC3990s.mo36720a().mo37021c_() - nanoTime : (char) 65535;
        abstractC3990s.mo36720a().mo37018a(Math.min((long) mo37021c_, timeUnit.toNanos(i)) + nanoTime);
        try {
            C3969c c3969c = new C3969c();
            while (abstractC3990s.mo36719a(c3969c, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c3969c.m37106r();
            }
            if (mo37021c_ == Long.MAX_VALUE) {
                abstractC3990s.mo36720a().mo37019f();
                return true;
            }
            abstractC3990s.mo36720a().mo37018a(nanoTime + mo37021c_);
            return true;
        } catch (InterruptedIOException e) {
            if (mo37021c_ == Long.MAX_VALUE) {
                abstractC3990s.mo36720a().mo37019f();
                return false;
            }
            abstractC3990s.mo36720a().mo37018a(nanoTime + mo37021c_);
            return false;
        } catch (Throwable th) {
            if (mo37021c_ == Long.MAX_VALUE) {
                abstractC3990s.mo36720a().mo37019f();
            } else {
                abstractC3990s.mo36720a().mo37018a(nanoTime + mo37021c_);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m36892b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
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
    public static String m36890c(String str, int i, int i2) {
        int m36910a = m36910a(str, i, i2);
        return str.substring(m36910a, m36893b(str, m36910a, i2));
    }

    /* renamed from: c */
    public static boolean m36891c(String str) {
        return f14591r.matcher(str).matches();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x012c, code lost:
        if (r14 == 16) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0132, code lost:
        if (r15 != (-1)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0135, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0137, code lost:
        r0 = r14 - r15;
        java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
        java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015e, code lost:
        return java.net.InetAddress.getByAddress(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0167, code lost:
        throw new java.lang.AssertionError();
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress m36888d(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.C4015c.m36888d(java.lang.String, int, int):java.net.InetAddress");
    }

    /* renamed from: d */
    private static boolean m36889d(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
