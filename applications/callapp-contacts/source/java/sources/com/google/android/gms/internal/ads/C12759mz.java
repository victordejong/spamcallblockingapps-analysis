package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.mz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mz.class */
public class C12759mz {

    /* renamed from: b */
    private static String f49561b = "Volley";

    /* renamed from: a */
    public static boolean f49560a = Log.isLoggable("Volley", 2);

    /* renamed from: c */
    private static final String f49562c = C12759mz.class.getName();

    /* renamed from: com.google.android.gms.internal.ads.mz$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mz$a.class */
    public static final class C12760a {

        /* renamed from: a */
        public static final boolean f49563a = C12759mz.f49560a;

        /* renamed from: b */
        private final List<C12806or> f49564b = new ArrayList();

        /* renamed from: c */
        private boolean f49565c = false;

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* renamed from: a */
        public final void m14477a(String str) {
            char c;
            synchronized (this) {
                this.f49565c = true;
                if (this.f49564b.size() == 0) {
                    c = 0;
                } else {
                    long j = this.f49564b.get(0).f49634c;
                    List<C12806or> list = this.f49564b;
                    c = list.get(list.size() - 1).f49634c - j;
                }
                if (c <= 0) {
                    return;
                }
                ?? r0 = this.f49564b.get(0).f49634c;
                C12759mz.m14480b("(%-4d ms) %s", Long.valueOf(c), str);
                Iterator<C12806or> it2 = this.f49564b.iterator();
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (!it2.hasNext()) {
                        return;
                    }
                    C12806or next = it2.next();
                    ?? r02 = next.f49634c;
                    C12759mz.m14480b("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.f49633b), next.f49632a);
                    c2 = r02;
                }
            }
        }

        /* renamed from: a */
        public final void m14476a(String str, long j) {
            synchronized (this) {
                if (this.f49565c) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f49564b.add(new C12806or(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected final void finalize() throws Throwable {
            if (!this.f49565c) {
                m14477a("Request on the loose");
                C12759mz.m14479c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m14482a(String str, Object... objArr) {
        if (f49560a) {
            m14478d(str, objArr);
        }
    }

    /* renamed from: a */
    public static void m14481a(Throwable th, String str, Object... objArr) {
        Log.e(f49561b, m14478d(str, objArr), th);
    }

    /* renamed from: b */
    public static void m14480b(String str, Object... objArr) {
        m14478d(str, objArr);
    }

    /* renamed from: c */
    public static void m14479c(String str, Object... objArr) {
        Log.e(f49561b, m14478d(str, objArr));
    }

    /* renamed from: d */
    private static String m14478d(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f49562c)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(substring2);
                sb.append(".");
                sb.append(methodName);
                str2 = sb.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
