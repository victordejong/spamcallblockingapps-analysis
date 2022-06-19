package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zzwo;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog.class */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable(zzwo.zza, 2);

    /* renamed from: a */
    public static final String f9306a = VolleyLog.class.getName();

    /* renamed from: com.mopub.volley.VolleyLog$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog$a.class */
    public static class C2722a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a */
        public final List<C2723a> f9307a = new ArrayList();

        /* renamed from: b */
        public boolean f9308b = false;

        /* renamed from: com.mopub.volley.VolleyLog$a$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyLog$a$a.class */
        public static class C2723a {
            public final String name;
            public final long thread;
            public final long time;

            public C2723a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        public void add(String str, long j) {
            synchronized (this) {
                if (this.f9308b) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f9307a.add(new C2723a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        public void finalize() throws Throwable {
            if (!this.f9308b) {
                finish("Request on the loose");
                VolleyLog.m36158e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        public void finish(String str) {
            char c;
            synchronized (this) {
                this.f9308b = true;
                if (this.f9307a.size() == 0) {
                    c = 0;
                } else {
                    long j = this.f9307a.get(0).time;
                    List<C2723a> list = this.f9307a;
                    c = list.get(list.size() - 1).time - j;
                }
                if (c <= 0) {
                    return;
                }
                ?? r0 = this.f9307a.get(0).time;
                VolleyLog.m36159d("(%-4d ms) %s", Long.valueOf(c), str);
                Iterator<C2723a> it = this.f9307a.iterator();
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (!it.hasNext()) {
                        return;
                    }
                    C2723a next = it.next();
                    ?? r02 = next.time;
                    VolleyLog.m36159d("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.thread), next.name);
                    c2 = r02;
                }
            }
        }
    }

    /* renamed from: a */
    public static String m36160a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f9306a)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                StringBuilder m8696K = C22128a.m8696K(substring.substring(substring.lastIndexOf(36) + 1), StringConstant.DOT);
                m8696K.append(stackTrace[i].getMethodName());
                str2 = m8696K.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    /* renamed from: d */
    public static void m36159d(String str, Object... objArr) {
        m36160a(str, objArr);
    }

    /* renamed from: e */
    public static void m36158e(String str, Object... objArr) {
        m36160a(str, objArr);
    }

    /* renamed from: e */
    public static void m36157e(Throwable th, String str, Object... objArr) {
        m36160a(str, objArr);
    }

    public static void setTag(String str) {
        m36159d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    /* renamed from: v */
    public static void m36156v(String str, Object... objArr) {
        if (DEBUG) {
            m36160a(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, m36160a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, m36160a(str, objArr), th);
    }
}
