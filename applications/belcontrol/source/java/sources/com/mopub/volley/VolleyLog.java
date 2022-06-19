package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);

    /* renamed from: a */
    public static final String f5501a = VolleyLog.class.getName();

    /* renamed from: com.mopub.volley.VolleyLog$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog$a.class */
    public static class C1233a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a */
        public final List<C1234a> f5502a = new ArrayList();

        /* renamed from: b */
        public boolean f5503b = false;

        /* renamed from: com.mopub.volley.VolleyLog$a$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog$a$a.class */
        public static class C1234a {
            public final String name;
            public final long thread;
            public final long time;

            public C1234a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        /* renamed from: a */
        public final long m3152a() {
            if (this.f5502a.size() == 0) {
                return 0L;
            }
            long j = this.f5502a.get(0).time;
            List<C1234a> list = this.f5502a;
            return list.get(list.size() - 1).time - j;
        }

        public void add(String str, long j) {
            synchronized (this) {
                if (this.f5503b) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f5502a.add(new C1234a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        public void finalize() {
            if (!this.f5503b) {
                finish("Request on the loose");
                VolleyLog.m3155e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        public void finish(String str) {
            synchronized (this) {
                this.f5503b = true;
                long m3152a = m3152a();
                if (m3152a <= 0) {
                    return;
                }
                char c = this.f5502a.get(0).time;
                VolleyLog.m3156d("(%-4d ms) %s", Long.valueOf(m3152a), str);
                for (C1234a c1234a : this.f5502a) {
                    ?? r0 = c1234a.time;
                    VolleyLog.m3156d("(+%-4d) [%2d] %s", Long.valueOf(r0 - c), Long.valueOf(c1234a.thread), c1234a.name);
                    c = r0;
                }
            }
        }
    }

    /* renamed from: a */
    public static String m3157a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f5501a)) {
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
    public static void m3156d(String str, Object... objArr) {
        Log.d(TAG, m3157a(str, objArr));
    }

    /* renamed from: e */
    public static void m3155e(String str, Object... objArr) {
        Log.e(TAG, m3157a(str, objArr));
    }

    /* renamed from: e */
    public static void m3154e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, m3157a(str, objArr), th);
    }

    public static void setTag(String str) {
        m3156d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m3153v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, m3157a(str, objArr));
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, m3157a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, m3157a(str, objArr), th);
    }
}
