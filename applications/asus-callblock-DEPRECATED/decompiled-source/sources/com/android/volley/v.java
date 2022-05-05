package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/volley/v.class */
public class v {

    /* renamed from: a  reason: collision with root package name */
    public static String f2344a = "Volley";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f2345b = Log.isLoggable("Volley", 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/volley/v$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final boolean f2346a = v.f2345b;

        /* renamed from: b  reason: collision with root package name */
        private final List<C0060a> f2347b = new ArrayList();
        private boolean c = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.android.volley.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/android/volley/v$a$a.class */
        public static final class C0060a {

            /* renamed from: a  reason: collision with root package name */
            public final String f2348a;

            /* renamed from: b  reason: collision with root package name */
            public final long f2349b;
            public final long c;

            public C0060a(String str, long j, long j2) {
                this.f2348a = str;
                this.f2349b = j;
                this.c = j2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40 */
        /* JADX WARN: Type inference failed for: r0v41 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 207
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.volley.v.a.a(java.lang.String):void");
        }

        public final void a(String str, long j) {
            synchronized (this) {
                if (this.c) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f2347b.add(new C0060a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected final void finalize() {
            if (!this.c) {
                a("Request on the loose");
                v.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    public static void a(String str, Object... objArr) {
        if (f2345b) {
            Log.v(f2344a, e(str, objArr));
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(f2344a, e(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        Log.d(f2344a, e(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(f2344a, e(str, objArr));
    }

    public static void d(String str, Object... objArr) {
        Log.wtf(f2344a, e(str, objArr));
    }

    private static String e(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClass().equals(v.class)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
