package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.ez */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ez.class */
public class C3128ez {

    /* renamed from: b */
    private static String f16643b = "Volley";

    /* renamed from: a */
    public static boolean f16642a = Log.isLoggable("Volley", 2);

    /* renamed from: c */
    private static final String f16644c = C3128ez.class.getName();

    /* renamed from: com.google.android.gms.internal.ads.ez$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ez$a.class */
    public static final class C3129a {

        /* renamed from: a */
        public static final boolean f16645a = C3128ez.f16642a;

        /* renamed from: b */
        private final List<C3183gz> f16646b = new ArrayList();

        /* renamed from: c */
        private boolean f16647c = false;

        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* renamed from: a */
        public final void m7848a(String str) {
            synchronized (this) {
                this.f16647c = true;
                char c = this.f16646b.size() == 0 ? (char) 0 : this.f16646b.get(this.f16646b.size() - 1).f16701c - this.f16646b.get(0).f16701c;
                if (c > 0) {
                    ?? r0 = this.f16646b.get(0).f16701c;
                    C3128ez.m7851b("(%-4d ms) %s", Long.valueOf(c), str);
                    Iterator<C3183gz> it = this.f16646b.iterator();
                    char c2 = r0;
                    while (true) {
                        char c3 = c2;
                        if (!it.hasNext()) {
                            break;
                        }
                        C3183gz next = it.next();
                        ?? r02 = next.f16701c;
                        C3128ez.m7851b("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.f16700b), next.f16699a);
                        c2 = r02;
                    }
                }
            }
        }

        /* renamed from: a */
        public final void m7847a(String str, long j) {
            synchronized (this) {
                if (this.f16647c) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f16646b.add(new C3183gz(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected final void finalize() {
            if (!this.f16647c) {
                m7848a("Request on the loose");
                C3128ez.m7850c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m7853a(String str, Object... objArr) {
        if (f16642a) {
            Log.v(f16643b, m7849d(str, objArr));
        }
    }

    /* renamed from: a */
    public static void m7852a(Throwable th, String str, Object... objArr) {
        Log.e(f16643b, m7849d(str, objArr), th);
    }

    /* renamed from: b */
    public static void m7851b(String str, Object... objArr) {
        Log.d(f16643b, m7849d(str, objArr));
    }

    /* renamed from: c */
    public static void m7850c(String str, Object... objArr) {
        Log.e(f16643b, m7849d(str, objArr));
    }

    /* renamed from: d */
    private static String m7849d(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f16644c)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                str2 = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length()).append(substring2).append(".").append(methodName).toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
