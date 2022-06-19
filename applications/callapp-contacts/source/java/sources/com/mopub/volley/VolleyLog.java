package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);

    /* renamed from: a */
    private static final String f60390a = VolleyLog.class.getName();

    /* renamed from: com.mopub.volley.VolleyLog$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog$a.class */
    public static final class C17013a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a */
        private final List<C17014a> f60391a = new ArrayList();

        /* renamed from: b */
        private boolean f60392b = false;

        /* renamed from: com.mopub.volley.VolleyLog$a$a */
        /* loaded from: classes4-dex2jar.jar:com/mopub/volley/VolleyLog$a$a.class */
        public static final class C17014a {
            public final String name;
            public final long thread;
            public final long time;

            public C17014a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        public final void add(String str, long j) {
            synchronized (this) {
                if (this.f60392b) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f60391a.add(new C17014a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected final void finalize() throws Throwable {
            if (!this.f60392b) {
                finish("Request on the loose");
                VolleyLog.m6028e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        public final void finish(String str) {
            char c;
            synchronized (this) {
                this.f60392b = true;
                if (this.f60391a.size() == 0) {
                    c = 0;
                } else {
                    long j = this.f60391a.get(0).time;
                    List<C17014a> list = this.f60391a;
                    c = list.get(list.size() - 1).time - j;
                }
                if (c <= 0) {
                    return;
                }
                ?? r0 = this.f60391a.get(0).time;
                VolleyLog.m6029d("(%-4d ms) %s", Long.valueOf(c), str);
                Iterator<C17014a> it2 = this.f60391a.iterator();
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (!it2.hasNext()) {
                        return;
                    }
                    C17014a next = it2.next();
                    ?? r02 = next.time;
                    VolleyLog.m6029d("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.thread), next.name);
                    c2 = r02;
                }
            }
        }
    }

    /* renamed from: a */
    private static String m6030a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f60390a)) {
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

    /* renamed from: d */
    public static void m6029d(String str, Object... objArr) {
        m6030a(str, objArr);
    }

    /* renamed from: e */
    public static void m6028e(String str, Object... objArr) {
        Log.e(TAG, m6030a(str, objArr));
    }

    /* renamed from: e */
    public static void m6027e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, m6030a(str, objArr), th);
    }

    public static void setTag(String str) {
        m6029d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m6026v(String str, Object... objArr) {
        if (DEBUG) {
            m6030a(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, m6030a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, m6030a(str, objArr), th);
    }
}
