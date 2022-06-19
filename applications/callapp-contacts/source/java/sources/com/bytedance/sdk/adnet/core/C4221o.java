package com.bytedance.sdk.adnet.core;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.adnet.core.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o.class */
public class C4221o {

    /* renamed from: a */
    public static boolean f15476a = Log.isLoggable("VNetLog", 2);

    /* renamed from: b */
    private static String f15477b = "VNetLog";

    /* renamed from: com.bytedance.sdk.adnet.core.o$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o$a.class */
    public static class C4222a {

        /* renamed from: a */
        public static final boolean f15478a = C4221o.f15476a;

        /* renamed from: b */
        private final List<C4223a> f15479b = new ArrayList();

        /* renamed from: c */
        private boolean f15480c = false;

        /* renamed from: com.bytedance.sdk.adnet.core.o$a$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/o$a$a.class */
        public static class C4223a {

            /* renamed from: a */
            public final String f15481a;

            /* renamed from: b */
            public final long f15482b;

            /* renamed from: c */
            public final long f15483c;

            public C4223a(String str, long j, long j2) {
                this.f15481a = str;
                this.f15482b = j;
                this.f15483c = j2;
            }
        }

        /* renamed from: a */
        private long m36102a() {
            if (this.f15479b.size() == 0) {
                return 0L;
            }
            long j = this.f15479b.get(0).f15483c;
            List<C4223a> list = this.f15479b;
            return list.get(list.size() - 1).f15483c - j;
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* renamed from: a */
        public void m36101a(String str) {
            synchronized (this) {
                this.f15480c = true;
                long m36102a = m36102a();
                if (m36102a <= 0) {
                    return;
                }
                char c = this.f15479b.get(0).f15483c;
                C4221o.m36106b("(%-4d ms) %s", Long.valueOf(m36102a), str);
                for (C4223a c4223a : this.f15479b) {
                    ?? r0 = c4223a.f15483c;
                    C4221o.m36106b("(+%-4d) [%2d] %s", Long.valueOf(r0 - c), Long.valueOf(c4223a.f15482b), c4223a.f15481a);
                    c = r0;
                }
            }
        }

        /* renamed from: a */
        public void m36100a(String str, long j) {
            synchronized (this) {
                if (this.f15480c) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f15479b.add(new C4223a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        protected void finalize() throws Throwable {
            if (!this.f15480c) {
                m36101a("Request on the loose");
                C4221o.m36105c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m36108a(String str, Object... objArr) {
        if (f15476a) {
            m36103e(str, objArr);
        }
    }

    /* renamed from: a */
    public static void m36107a(Throwable th, String str, Object... objArr) {
        Log.e(f15477b, m36103e(str, objArr), th);
    }

    /* renamed from: b */
    public static void m36106b(String str, Object... objArr) {
        m36103e(str, objArr);
    }

    /* renamed from: c */
    public static void m36105c(String str, Object... objArr) {
        Log.e(f15477b, m36103e(str, objArr));
    }

    /* renamed from: d */
    public static void m36104d(String str, Object... objArr) {
        Log.wtf(f15477b, m36103e(str, objArr));
    }

    /* renamed from: e */
    private static String m36103e(String str, Object... objArr) {
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
