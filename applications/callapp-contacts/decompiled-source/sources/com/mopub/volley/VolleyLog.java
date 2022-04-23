package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);

    /* renamed from: a  reason: collision with root package name */
    private static final String f34809a = VolleyLog.class.getName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog$a.class */
    public static final class a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a  reason: collision with root package name */
        private final List<C0549a> f34810a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private boolean f34811b = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.mopub.volley.VolleyLog$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog$a$a.class */
        public static final class C0549a {
            public final String name;
            public final long thread;
            public final long time;

            public C0549a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        public final void add(String str, long j) {
            synchronized (this) {
                if (!this.f34811b) {
                    this.f34810a.add(new C0549a(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        protected final void finalize() throws Throwable {
            if (!this.f34811b) {
                finish("Request on the loose");
                VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29 */
        /* JADX WARN: Type inference failed for: r0v42 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void finish(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 215
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.VolleyLog.a.finish(java.lang.String):void");
        }
    }

    private static String a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f34809a)) {
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

    public static void d(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, a(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, a(str, objArr), th);
    }

    public static void setTag(String str) {
        d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            a(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr), th);
    }
}
