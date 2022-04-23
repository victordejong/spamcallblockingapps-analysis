package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);

    /* renamed from: a */
    public static final String f35120a = VolleyLog.class.getName();

    /* renamed from: com.mopub.volley.VolleyLog$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/VolleyLog$a.class */
    public static class C9000a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a */
        public final List<C9001a> f35121a = new ArrayList();

        /* renamed from: b */
        public boolean f35122b = false;

        /* renamed from: com.mopub.volley.VolleyLog$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/volley/VolleyLog$a$a.class */
        public static class C9001a {
            public final String name;
            public final long thread;
            public final long time;

            public C9001a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        /* renamed from: a */
        public final long m3734a() {
            if (this.f35121a.size() == 0) {
                return 0L;
            }
            long j = this.f35121a.get(0).time;
            List<C9001a> list = this.f35121a;
            return list.get(list.size() - 1).time - j;
        }

        public void add(String str, long j) {
            synchronized (this) {
                if (!this.f35122b) {
                    this.f35121a.add(new C9001a(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        public void finalize() throws Throwable {
            if (!this.f35122b) {
                finish("Request on the loose");
                VolleyLog.m3737e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void finish(java.lang.String r10) {
            /*
                r9 = this;
                r0 = r9
                monitor-enter(r0)
                r0 = r9
                r1 = 1
                r0.f35122b = r1     // Catch: all -> 0x008e
                r0 = r9
                long r0 = r0.m3734a()     // Catch: all -> 0x008e
                r11 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0015
                r0 = r9
                monitor-exit(r0)
                return
            L_0x0015:
                r0 = r9
                java.util.List<com.mopub.volley.VolleyLog$a$a> r0 = r0.f35121a     // Catch: all -> 0x008e
                r1 = 0
                java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x008e
                com.mopub.volley.VolleyLog$a$a r0 = (com.mopub.volley.VolleyLog.C9000a.C9001a) r0     // Catch: all -> 0x008e
                long r0 = r0.time     // Catch: all -> 0x008e
                r13 = r0
                java.lang.String r0 = "(%-4d ms) %s"
                r1 = 2
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x008e
                r2 = r1
                r3 = 0
                r4 = r11
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008e
                r2[r3] = r4     // Catch: all -> 0x008e
                r2 = r1
                r3 = 1
                r4 = r10
                r2[r3] = r4     // Catch: all -> 0x008e
                com.mopub.volley.VolleyLog.m3738d(r0, r1)     // Catch: all -> 0x008e
                r0 = r9
                java.util.List<com.mopub.volley.VolleyLog$a$a> r0 = r0.f35121a     // Catch: all -> 0x008e
                java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x008e
                r10 = r0
            L_0x0045:
                r0 = r10
                boolean r0 = r0.hasNext()     // Catch: all -> 0x008e
                if (r0 == 0) goto L_0x008b
                r0 = r10
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x008e
                com.mopub.volley.VolleyLog$a$a r0 = (com.mopub.volley.VolleyLog.C9000a.C9001a) r0     // Catch: all -> 0x008e
                r15 = r0
                r0 = r15
                long r0 = r0.time     // Catch: all -> 0x008e
                r11 = r0
                java.lang.String r0 = "(+%-4d) [%2d] %s"
                r1 = 3
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x008e
                r2 = r1
                r3 = 0
                r4 = r11
                r5 = r13
                long r4 = r4 - r5
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008e
                r2[r3] = r4     // Catch: all -> 0x008e
                r2 = r1
                r3 = 1
                r4 = r15
                long r4 = r4.thread     // Catch: all -> 0x008e
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008e
                r2[r3] = r4     // Catch: all -> 0x008e
                r2 = r1
                r3 = 2
                r4 = r15
                java.lang.String r4 = r4.name     // Catch: all -> 0x008e
                r2[r3] = r4     // Catch: all -> 0x008e
                com.mopub.volley.VolleyLog.m3738d(r0, r1)     // Catch: all -> 0x008e
                r0 = r11
                r13 = r0
                goto L_0x0045
            L_0x008b:
                r0 = r9
                monitor-exit(r0)
                return
            L_0x008e:
                r10 = move-exception
                r0 = r9
                monitor-exit(r0)
                goto L_0x0096
            L_0x0094:
                r0 = r10
                throw r0
            L_0x0096:
                goto L_0x0094
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.VolleyLog.C9000a.finish(java.lang.String):void");
        }
    }

    /* renamed from: a */
    public static String m3739a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f35120a)) {
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
    public static void m3738d(String str, Object... objArr) {
        Log.d(TAG, m3739a(str, objArr));
    }

    /* renamed from: e */
    public static void m3737e(String str, Object... objArr) {
        Log.e(TAG, m3739a(str, objArr));
    }

    /* renamed from: e */
    public static void m3736e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, m3739a(str, objArr), th);
    }

    public static void setTag(String str) {
        m3738d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m3735v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, m3739a(str, objArr));
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, m3739a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, m3739a(str, objArr), th);
    }
}
