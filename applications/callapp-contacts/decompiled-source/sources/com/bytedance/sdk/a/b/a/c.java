package com.bytedance.sdk.a.b.a;

import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.s;
import com.bytedance.sdk.a.b.u;
import com.bytedance.sdk.a.b.z;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f7878a;

    /* renamed from: c  reason: collision with root package name */
    public static final ab f7880c;

    /* renamed from: d  reason: collision with root package name */
    public static final z f7881d;

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f7879b = new String[0];
    private static final f i = f.b("efbbbf");
    private static final f j = f.b("feff");
    private static final f k = f.b("fffe");
    private static final f l = f.b("0000ffff");
    private static final f m = f.b("ffff0000");
    public static final Charset e = Charset.forName("UTF-8");
    public static final Charset f = Charset.forName("ISO-8859-1");
    private static final Charset n = Charset.forName("UTF-16BE");
    private static final Charset o = Charset.forName("UTF-16LE");
    private static final Charset p = Charset.forName("UTF-32BE");
    private static final Charset q = Charset.forName("UTF-32LE");
    public static final TimeZone g = TimeZone.getTimeZone("GMT");
    public static final Comparator<String> h = new Comparator<String>() { // from class: com.bytedance.sdk.a.b.a.c.1
        /* renamed from: a */
        public final int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };
    private static final Pattern r = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    static {
        byte[] bArr = new byte[0];
        f7878a = bArr;
        f7880c = ab.a(null, bArr);
        f7881d = z.a((u) null, bArr);
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static int a(String str, int i2, int i3) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, int i2, int i3, char c2) {
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, int i2, int i3, String str2) {
        while (i2 < i3) {
            if (str2.indexOf(str.charAt(i2)) != -1) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int a(String str, long j2, TimeUnit timeUnit) {
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 >= 0) {
            Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j2);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            } else if (millis != 0 || i2 <= 0) {
                return (int) millis;
            } else {
                throw new IllegalArgumentException(str + " too small.");
            }
        } else {
            throw new IllegalArgumentException(str + " < 0");
        }
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static AssertionError a(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    public static String a(s sVar, boolean z) {
        String str;
        if (sVar.f().contains(":")) {
            str = "[" + sVar.f() + "]";
        } else {
            str = sVar.f();
        }
        if (!z && sVar.g() == s.a(sVar.b())) {
            return str;
        }
        return str + ":" + sVar.g();
    }

    public static String a(String str) {
        if (str.contains(":")) {
            InetAddress d2 = (!str.startsWith("[") || !str.endsWith("]")) ? d(str, 0, str.length()) : d(str, 1, str.length() - 1);
            if (d2 == null) {
                return null;
            }
            byte[] address = d2.getAddress();
            if (address.length == 16) {
                return a(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (d(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private static String a(byte[] bArr) {
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        for (int i6 = 0; i6 < bArr.length; i6 = i2 + 2) {
            i2 = i6;
            while (i2 < 16 && bArr[i2] == 0 && bArr[i2 + 1] == 0) {
                i2 += 2;
            }
            int i7 = i2 - i6;
            i4 = i4;
            i5 = i5;
            if (i7 > i5) {
                i4 = i4;
                i5 = i5;
                if (i7 >= 4) {
                    i5 = i7;
                    i4 = i6;
                }
            }
        }
        com.bytedance.sdk.a.a.c cVar = new com.bytedance.sdk.a.a.c();
        while (i3 < bArr.length) {
            if (i3 == i4) {
                cVar.i(58);
                int i8 = i3 + i5;
                i3 = i8;
                if (i8 == 16) {
                    cVar.i(58);
                    i3 = i8;
                }
            } else {
                if (i3 > 0) {
                    cVar.i(58);
                }
                cVar.k(((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255));
                i3 += 2;
            }
        }
        return cVar.o();
    }

    public static Charset a(e eVar, Charset charset) throws IOException {
        f fVar = i;
        if (eVar.a(0L, fVar)) {
            eVar.h(fVar.g());
            return e;
        }
        f fVar2 = j;
        if (eVar.a(0L, fVar2)) {
            eVar.h(fVar2.g());
            return n;
        }
        f fVar3 = k;
        if (eVar.a(0L, fVar3)) {
            eVar.h(fVar3.g());
            return o;
        }
        f fVar4 = l;
        if (eVar.a(0L, fVar4)) {
            eVar.h(fVar4.g());
            return p;
        }
        f fVar5 = m;
        if (!eVar.a(0L, fVar5)) {
            return charset;
        }
        eVar.h(fVar5.g());
        return q;
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(final String str, final boolean z) {
        return new ThreadFactory() { // from class: com.bytedance.sdk.a.b.a.c.2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "tt_pangle_thread_" + str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static void a(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!a(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception e4) {
            }
        }
    }

    public static boolean a(com.bytedance.sdk.a.a.s sVar, int i2, TimeUnit timeUnit) {
        try {
            return b(sVar, i2, timeUnit);
        } catch (IOException e2) {
            return false;
        }
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private static boolean a(String str, int i2, int i3, byte[] bArr, int i4) {
        char charAt;
        int i5 = i4;
        int i6 = i2;
        while (i6 < i3) {
            if (i5 == bArr.length) {
                return false;
            }
            int i7 = i6;
            if (i5 != i4) {
                if (str.charAt(i6) != '.') {
                    return false;
                }
                i7 = i6 + 1;
            }
            i6 = i7;
            int i8 = 0;
            while (i6 < i3 && (charAt = str.charAt(i6)) >= '0' && charAt <= '9') {
                if (i8 == 0 && i7 != i6) {
                    return false;
                }
                i8 = ((i8 * 10) + charAt) - 48;
                if (i8 > 255) {
                    return false;
                }
                i6++;
            }
            if (i6 - i7 == 0) {
                return false;
            }
            bArr[i5] = (byte) i8;
            i5++;
        }
        return i5 == i4 + 4;
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i2]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i2++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] a(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    public static int b(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static int b(String str, int i2, int i3) {
        while (true) {
            i3--;
            if (i3 < i2) {
                return i2;
            }
            char charAt = str.charAt(i3);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i3 + 1;
            }
        }
    }

    public static boolean b(com.bytedance.sdk.a.a.s sVar, int i2, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long c_ = sVar.a().c() ? sVar.a().c_() - nanoTime : Long.MAX_VALUE;
        sVar.a().a(Math.min(c_, timeUnit.toNanos(i2)) + nanoTime);
        try {
            com.bytedance.sdk.a.a.c cVar = new com.bytedance.sdk.a.a.c();
            while (sVar.a(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                cVar.r();
            }
            if (c_ == Long.MAX_VALUE) {
                sVar.a().f();
                return true;
            }
            sVar.a().a(nanoTime + c_);
            return true;
        } catch (InterruptedIOException e2) {
            if (c_ == Long.MAX_VALUE) {
                sVar.a().f();
                return false;
            }
            sVar.a().a(nanoTime + c_);
            return false;
        } catch (Throwable th) {
            if (c_ == Long.MAX_VALUE) {
                sVar.a().f();
            } else {
                sVar.a().a(nanoTime + c_);
            }
            throw th;
        }
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
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

    public static String c(String str, int i2, int i3) {
        int a2 = a(str, i2, i3);
        return str.substring(a2, b(str, a2, i3));
    }

    public static boolean c(String str) {
        return r.matcher(str).matches();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x012c, code lost:
        if (r14 == 16) goto L_0x0158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0132, code lost:
        if (r15 != (-1)) goto L_0x0137;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress d(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.c.d(java.lang.String, int, int):java.net.InetAddress");
    }

    private static boolean d(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
