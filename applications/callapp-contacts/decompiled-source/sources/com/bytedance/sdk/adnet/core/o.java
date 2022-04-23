package com.bytedance.sdk.adnet.core;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o.class */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f8336a = Log.isLoggable("VNetLog", 2);

    /* renamed from: b  reason: collision with root package name */
    private static String f8337b = "VNetLog";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final boolean f8338a = o.f8336a;

        /* renamed from: b  reason: collision with root package name */
        private final List<C0158a> f8339b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private boolean f8340c = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.sdk.adnet.core.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o$a$a.class */
        public static class C0158a {

            /* renamed from: a  reason: collision with root package name */
            public final String f8341a;

            /* renamed from: b  reason: collision with root package name */
            public final long f8342b;

            /* renamed from: c  reason: collision with root package name */
            public final long f8343c;

            public C0158a(String str, long j, long j2) {
                this.f8341a = str;
                this.f8342b = j;
                this.f8343c = j2;
            }
        }

        private long a() {
            if (this.f8339b.size() == 0) {
                return 0L;
            }
            long j = this.f8339b.get(0).f8343c;
            List<C0158a> list = this.f8339b;
            return list.get(list.size() - 1).f8343c - j;
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
        public void a(java.lang.String r10) {
            /*
                r9 = this;
                r0 = r9
                monitor-enter(r0)
                r0 = r9
                r1 = 1
                r0.f8340c = r1     // Catch: all -> 0x008d
                r0 = r9
                long r0 = r0.a()     // Catch: all -> 0x008d
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
                java.util.List<com.bytedance.sdk.adnet.core.o$a$a> r0 = r0.f8339b     // Catch: all -> 0x008d
                r1 = 0
                java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x008d
                com.bytedance.sdk.adnet.core.o$a$a r0 = (com.bytedance.sdk.adnet.core.o.a.C0158a) r0     // Catch: all -> 0x008d
                long r0 = r0.f8343c     // Catch: all -> 0x008d
                r13 = r0
                java.lang.String r0 = "(%-4d ms) %s"
                r1 = 2
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x008d
                r2 = r1
                r3 = 0
                r4 = r11
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008d
                r2[r3] = r4     // Catch: all -> 0x008d
                r2 = r1
                r3 = 1
                r4 = r10
                r2[r3] = r4     // Catch: all -> 0x008d
                com.bytedance.sdk.adnet.core.o.b(r0, r1)     // Catch: all -> 0x008d
                r0 = r9
                java.util.List<com.bytedance.sdk.adnet.core.o$a$a> r0 = r0.f8339b     // Catch: all -> 0x008d
                java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x008d
                r15 = r0
            L_0x0046:
                r0 = r15
                boolean r0 = r0.hasNext()     // Catch: all -> 0x008d
                if (r0 == 0) goto L_0x008a
                r0 = r15
                java.lang.Object r0 = r0.next()     // Catch: all -> 0x008d
                com.bytedance.sdk.adnet.core.o$a$a r0 = (com.bytedance.sdk.adnet.core.o.a.C0158a) r0     // Catch: all -> 0x008d
                r10 = r0
                r0 = r10
                long r0 = r0.f8343c     // Catch: all -> 0x008d
                r11 = r0
                java.lang.String r0 = "(+%-4d) [%2d] %s"
                r1 = 3
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x008d
                r2 = r1
                r3 = 0
                r4 = r11
                r5 = r13
                long r4 = r4 - r5
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008d
                r2[r3] = r4     // Catch: all -> 0x008d
                r2 = r1
                r3 = 1
                r4 = r10
                long r4 = r4.f8342b     // Catch: all -> 0x008d
                java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: all -> 0x008d
                r2[r3] = r4     // Catch: all -> 0x008d
                r2 = r1
                r3 = 2
                r4 = r10
                java.lang.String r4 = r4.f8341a     // Catch: all -> 0x008d
                r2[r3] = r4     // Catch: all -> 0x008d
                com.bytedance.sdk.adnet.core.o.b(r0, r1)     // Catch: all -> 0x008d
                r0 = r11
                r13 = r0
                goto L_0x0046
            L_0x008a:
                r0 = r9
                monitor-exit(r0)
                return
            L_0x008d:
                r10 = move-exception
                r0 = r9
                monitor-exit(r0)
                r0 = r10
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.core.o.a.a(java.lang.String):void");
        }

        public void a(String str, long j) {
            synchronized (this) {
                if (!this.f8340c) {
                    this.f8339b.add(new C0158a(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        protected void finalize() throws Throwable {
            if (!this.f8340c) {
                a("Request on the loose");
                o.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    public static void a(String str, Object... objArr) {
        if (f8336a) {
            e(str, objArr);
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(f8337b, e(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        e(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f8337b, e(str, objArr));
    }

    public static void d(String str, Object... objArr) {
        Log.wtf(f8337b, e(str, objArr));
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
            } else if (!stackTrace[i].getClassName().equals("com.bytedance.sdk.adnet.VNetLog")) {
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
