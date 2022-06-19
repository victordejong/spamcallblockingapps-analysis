package com.squareup.okhttp.p089u;

import com.squareup.okhttp.C2946l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.u.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/i.class */
public final class C2975i {

    /* renamed from: a */
    public static final byte[] f12519a = new byte[0];

    /* renamed from: b */
    public static final String[] f12520b = new String[0];

    /* renamed from: c */
    public static final Charset f12521c = Charset.forName("UTF-8");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.u.i$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/i$a.class */
    public static final class ThreadFactoryC2976a implements ThreadFactory {

        /* renamed from: a */
        final /* synthetic */ String f12522a;

        /* renamed from: b */
        final /* synthetic */ boolean f12523b;

        ThreadFactoryC2976a(String str, boolean z) {
            this.f12522a = str;
            this.f12523b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f12522a);
            thread.setDaemon(this.f12523b);
            return thread;
        }
    }

    /* renamed from: a */
    public static void m659a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: b */
    public static void m658b(Closeable closeable, Closeable closeable2) {
        Error th;
        IOException iOException;
        try {
            closeable.close();
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            closeable2.close();
            iOException = th;
        } catch (Throwable th3) {
            iOException = th;
            if (th == null) {
                iOException = th3;
            }
        }
        if (iOException == null) {
            return;
        }
        if (iOException instanceof IOException) {
            throw iOException;
        }
        if (iOException instanceof RuntimeException) {
            throw iOException;
        }
        if (!(iOException instanceof Error)) {
            throw new AssertionError(iOException);
        }
        throw iOException;
    }

    /* renamed from: c */
    public static void m657c(Closeable closeable) {
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
    public static void m656d(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!m647m(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    /* renamed from: e */
    public static boolean m655e(Source source, int i, TimeUnit timeUnit) {
        try {
            return m645o(source, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m654f(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: g */
    public static String m653g(C2946l c2946l) {
        String str;
        if (c2946l.m855z() != C2946l.m872i(c2946l.m883D())) {
            str = c2946l.m864q() + ":" + c2946l.m855z();
        } else {
            str = c2946l.m864q();
        }
        return str;
    }

    /* renamed from: h */
    public static <T> List<T> m652h(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    /* renamed from: i */
    public static <T> List<T> m651i(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    /* renamed from: j */
    public static <K, V> Map<K, V> m650j(Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    /* renamed from: k */
    private static <T> List<T> m649k(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t2 = tArr2[i];
                    if (t.equals(t2)) {
                        arrayList.add(t2);
                        break;
                    }
                    i++;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public static <T> T[] m648l(Class<T> cls, T[] tArr, T[] tArr2) {
        List m649k = m649k(tArr, tArr2);
        return (T[]) m649k.toArray((Object[]) Array.newInstance((Class<?>) cls, m649k.size()));
    }

    /* renamed from: m */
    public static boolean m647m(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: n */
    public static ByteString m646n(ByteString byteString) {
        try {
            return ByteString.of(MessageDigest.getInstance("SHA-1").digest(byteString.toByteArray()));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: o */
    public static boolean m645o(Source source, int i, TimeUnit timeUnit) {
        long nanoTime = System.nanoTime();
        char deadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - nanoTime : (char) 65535;
        source.timeout().deadlineNanoTime(Math.min((long) deadlineNanoTime, timeUnit.toNanos(i)) + nanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 2048L) != -1) {
                buffer.clear();
            }
            Timeout timeout = source.timeout();
            if (deadlineNanoTime == Long.MAX_VALUE) {
                timeout.clearDeadline();
                return true;
            }
            timeout.deadlineNanoTime(nanoTime + deadlineNanoTime);
            return true;
        } catch (InterruptedIOException e) {
            Timeout timeout2 = source.timeout();
            if (deadlineNanoTime == Long.MAX_VALUE) {
                timeout2.clearDeadline();
                return false;
            }
            timeout2.deadlineNanoTime(nanoTime + deadlineNanoTime);
            return false;
        } catch (Throwable th) {
            Timeout timeout3 = source.timeout();
            if (deadlineNanoTime == Long.MAX_VALUE) {
                timeout3.clearDeadline();
            } else {
                timeout3.deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            throw th;
        }
    }

    /* renamed from: p */
    public static ThreadFactory m644p(String str, boolean z) {
        return new ThreadFactoryC2976a(str, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
        r0 = new okio.Buffer();
        r0.writeUtf8(r5, 0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        if (r7 >= r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        r0 = r5.codePointAt(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
        if (r0 <= 31) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        if (r0 >= 127) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
        r0 = 63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
        r0.writeUtf8CodePoint(r0);
        r7 = r7 + java.lang.Character.charCount(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0075, code lost:
        r8 = r0.readUtf8();
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m643q(java.lang.String r5) {
        /*
            r0 = r5
            int r0 = r0.length()
            r6 = r0
            r0 = 0
            r7 = r0
        L7:
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L7a
            r0 = r5
            r1 = r7
            int r0 = r0.codePointAt(r1)
            r9 = r0
            r0 = r9
            r1 = 31
            if (r0 <= r1) goto L2e
            r0 = r9
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 >= r1) goto L2e
            r0 = r7
            r1 = r9
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            r7 = r0
            goto L7
        L2e:
            okio.Buffer r0 = new okio.Buffer
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r5
            r2 = 0
            r3 = r7
            okio.Buffer r0 = r0.writeUtf8(r1, r2, r3)
        L3e:
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L75
            r0 = r5
            r1 = r7
            int r0 = r0.codePointAt(r1)
            r10 = r0
            r0 = r10
            r1 = 31
            if (r0 <= r1) goto L5f
            r0 = r10
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 >= r1) goto L5f
            r0 = r10
            r9 = r0
            goto L63
        L5f:
            r0 = 63
            r9 = r0
        L63:
            r0 = r8
            r1 = r9
            okio.Buffer r0 = r0.writeUtf8CodePoint(r1)
            r0 = r7
            r1 = r10
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            r7 = r0
            goto L3e
        L75:
            r0 = r8
            java.lang.String r0 = r0.readUtf8()
            r8 = r0
        L7a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.p089u.C2975i.m643q(java.lang.String):java.lang.String");
    }
}
