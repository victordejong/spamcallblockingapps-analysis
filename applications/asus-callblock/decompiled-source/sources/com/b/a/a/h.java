package com.b.a.a;

import b.c;
import b.f;
import b.q;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
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
/* loaded from: classes-dex2jar.jar:com/b/a/a/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f3301a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f3302b = new String[0];
    public static final Charset c = Charset.forName("UTF-8");

    public static int a(String str) {
        return "http".equals(str) ? 80 : "https".equals(str) ? 443 : -1;
    }

    private static int a(String str, int i) {
        if (i == -1) {
            i = a(str);
        }
        return i;
    }

    public static int a(URI uri) {
        return a(uri.getScheme(), uri.getPort());
    }

    public static int a(URL url) {
        return a(url.getProtocol(), url.getPort());
    }

    public static f a(f fVar) {
        try {
            return f.a(MessageDigest.getInstance("SHA-1").digest(fVar.d()));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static void a(long j, long j2) {
        if ((0 | j2) < 0 || 0 > j || j - 0 < j2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void a(Closeable closeable, Closeable closeable2) {
        Throwable th;
        Throwable th2 = null;
        try {
            closeable.close();
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            closeable2.close();
            th = th2;
        } catch (Throwable th4) {
            th = th4;
            th = th2;
            if (th2 == null) {
            }
        }
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            } else if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            } else if (th instanceof Error) {
                throw ((Error) th);
            } else {
                throw new AssertionError(th);
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static boolean a(q qVar, int i, TimeUnit timeUnit) {
        boolean z;
        long nanoTime = System.nanoTime();
        long f = qVar.a().c ? qVar.a().f() - nanoTime : Long.MAX_VALUE;
        qVar.a().a(Math.min(f, timeUnit.toNanos(i)) + nanoTime);
        try {
            c cVar = new c();
            while (qVar.a(cVar, 2048L) != -1) {
                cVar.n();
            }
            if (f == Long.MAX_VALUE) {
                qVar.a().c = false;
            } else {
                qVar.a().a(f + nanoTime);
            }
            z = true;
        } catch (InterruptedIOException e) {
            if (f == Long.MAX_VALUE) {
                qVar.a().c = false;
            } else {
                qVar.a().a(f + nanoTime);
            }
            z = false;
        } catch (Throwable th) {
            if (f == Long.MAX_VALUE) {
                qVar.a().c = false;
            } else {
                qVar.a().a(f + nanoTime);
            }
            throw th;
        }
        return z;
    }

    public static boolean a(q qVar, TimeUnit timeUnit) {
        boolean z;
        try {
            z = a(qVar, 100, timeUnit);
        } catch (IOException e) {
            z = false;
        }
        return z;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] a(Class<T> cls, T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object[] objArr : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t = tArr2[i];
                    if (objArr.equals(t)) {
                        arrayList.add(t);
                        break;
                    }
                    i++;
                }
            }
        }
        return (T[]) arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, arrayList.size()));
    }

    public static ThreadFactory b(final String str) {
        return new ThreadFactory() { // from class: com.b.a.a.h.1

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f3304b = true;

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(this.f3304b);
                return thread;
            }
        };
    }
}
