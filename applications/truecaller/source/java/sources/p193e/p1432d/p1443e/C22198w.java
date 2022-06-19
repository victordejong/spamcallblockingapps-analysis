package p193e.p1432d.p1443e;

import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zzwo;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.d.e.w */
/* loaded from: classes-dex2jar.jar:e/d/e/w.class */
public class C22198w {

    /* renamed from: a */
    public static boolean f61659a = Log.isLoggable(zzwo.zza, 2);

    /* renamed from: b */
    public static final String f61660b = C22198w.class.getName();

    /* renamed from: e.d.e.w$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/w$a.class */
    public static class C22199a {

        /* renamed from: c */
        public static final boolean f61661c = C22198w.f61659a;

        /* renamed from: a */
        public final List<C22200a> f61662a = new ArrayList();

        /* renamed from: b */
        public boolean f61663b = false;

        /* renamed from: e.d.e.w$a$a */
        /* loaded from: classes-dex2jar.jar:e/d/e/w$a$a.class */
        public static class C22200a {

            /* renamed from: a */
            public final String f61664a;

            /* renamed from: b */
            public final long f61665b;

            /* renamed from: c */
            public final long f61666c;

            public C22200a(String str, long j, long j2) {
                this.f61664a = str;
                this.f61665b = j;
                this.f61666c = j2;
            }
        }

        /* renamed from: a */
        public void m8482a(String str, long j) {
            synchronized (this) {
                if (this.f61663b) {
                    throw new IllegalStateException("Marker added to finished log");
                }
                this.f61662a.add(new C22200a(str, j, SystemClock.elapsedRealtime()));
            }
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* renamed from: b */
        public void m8481b(String str) {
            char c;
            synchronized (this) {
                this.f61663b = true;
                if (this.f61662a.size() == 0) {
                    c = 0;
                } else {
                    long j = this.f61662a.get(0).f61666c;
                    List<C22200a> list = this.f61662a;
                    c = list.get(list.size() - 1).f61666c - j;
                }
                if (c <= 0) {
                    return;
                }
                ?? r0 = this.f61662a.get(0).f61666c;
                C22198w.m8484a("(%-4d ms) %s", Long.valueOf(c), str);
                Iterator<C22200a> it = this.f61662a.iterator();
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (!it.hasNext()) {
                        return;
                    }
                    C22200a next = it.next();
                    ?? r02 = next.f61666c;
                    C22198w.m8484a("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.f61665b), next.f61664a);
                    c2 = r02;
                }
            }
        }

        public void finalize() throws Throwable {
            if (!this.f61663b) {
                m8481b("Request on the loose");
                C22198w.m8484a("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static String m8484a(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f61660b)) {
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

    /* renamed from: b */
    public static void m8483b(String str, Object... objArr) {
        if (f61659a) {
            m8484a(str, objArr);
        }
    }
}
