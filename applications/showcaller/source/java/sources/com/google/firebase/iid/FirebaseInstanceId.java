package com.google.firebase.iid;

import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7962e;
import com.google.android.gms.tasks.AbstractC7964f;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.C9195s;
import com.google.firebase.iid.C9198u;
import com.google.firebase.iid.p309w.AbstractC9202a;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.p313k.AbstractC9247b;
import com.google.firebase.p315m.AbstractC9258i;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {

    /* renamed from: b */
    private static C9198u f39508b;

    /* renamed from: d */
    static ScheduledExecutorService f39510d;

    /* renamed from: e */
    final Executor f39511e;

    /* renamed from: f */
    private final C8849c f39512f;

    /* renamed from: g */
    private final C9190n f39513g;

    /* renamed from: h */
    private final C9187k f39514h;

    /* renamed from: i */
    private final C9195s f39515i;

    /* renamed from: j */
    private final AbstractC9214g f39516j;

    /* renamed from: k */
    private boolean f39517k;

    /* renamed from: l */
    private final List<AbstractC9202a.AbstractC9203a> f39518l;

    /* renamed from: a */
    private static final long f39507a = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: c */
    private static final Pattern f39509c = Pattern.compile("\\AA[\\w-]{38}\\z");

    FirebaseInstanceId(C8849c c8849c, C9190n c9190n, Executor executor, Executor executor2, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this.f39517k = false;
        this.f39518l = new ArrayList();
        if (C9190n.m1594c(c8849c) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (f39508b == null) {
                        f39508b = new C9198u(c8849c.m2533g());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f39512f = c8849c;
            this.f39513g = c9190n;
            this.f39514h = new C9187k(c8849c, c9190n, abstractC9247b, abstractC9247b2, abstractC9214g);
            this.f39511e = executor2;
            this.f39515i = new C9195s(executor);
            this.f39516j = abstractC9214g;
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    public FirebaseInstanceId(C8849c c8849c, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g) {
        this(c8849c, new C9190n(c8849c.m2533g()), C9178b.m1608b(), C9178b.m1608b(), abstractC9247b, abstractC9247b2, abstractC9214g);
    }

    /* renamed from: b */
    private <T> T m1639b(AbstractC7966g<T> abstractC7966g) {
        try {
            return (T) C7970j.m5801b(abstractC7966g, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    m1645A();
                }
                throw ((IOException) cause);
            } else if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            } else {
                throw ((RuntimeException) cause);
            }
        }
    }

    /* renamed from: c */
    private static <T> T m1638c(AbstractC7966g<T> abstractC7966g) {
        C6155o.m17017k(abstractC7966g, "Task must not be null");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        abstractC7966g.mo5824c(ExecutorC9180d.f39525d, new AbstractC7958c(countDownLatch) { // from class: com.google.firebase.iid.e

            /* renamed from: a */
            private final CountDownLatch f39526a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39526a = countDownLatch;
            }

            @Override // com.google.android.gms.tasks.AbstractC7958c
            /* renamed from: a */
            public void mo1124a(AbstractC7966g abstractC7966g2) {
                this.f39526a.countDown();
            }
        });
        countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        return (T) m1630k(abstractC7966g);
    }

    /* renamed from: e */
    private static void m1636e(C8849c c8849c) {
        C6155o.m17021g(c8849c.m2530j().m1658e(), "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        C6155o.m17021g(c8849c.m2530j().m1660c(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        C6155o.m17021g(c8849c.m2530j().m1661b(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        C6155o.m17026b(m1621t(c8849c.m2530j().m1660c()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C6155o.m17026b(m1622s(c8849c.m2530j().m1661b()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Keep
    public static FirebaseInstanceId getInstance(C8849c c8849c) {
        m1636e(c8849c);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) c8849c.m2534f(FirebaseInstanceId.class);
        C6155o.m17017k(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    /* renamed from: j */
    private AbstractC7966g<AbstractC9188l> m1631j(String str, String str2) {
        return C7970j.m5798e(null).mo5816k(this.f39511e, new AbstractC7954a(this, str, m1615z(str2)) { // from class: com.google.firebase.iid.c

            /* renamed from: a */
            private final FirebaseInstanceId f39522a;

            /* renamed from: b */
            private final String f39523b;

            /* renamed from: c */
            private final String f39524c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39522a = this;
                this.f39523b = str;
                this.f39524c = m1615z;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public Object mo1125a(AbstractC7966g abstractC7966g) {
                return this.f39522a.m1616y(this.f39523b, this.f39524c, abstractC7966g);
            }
        });
    }

    /* renamed from: k */
    private static <T> T m1630k(AbstractC7966g<T> abstractC7966g) {
        if (abstractC7966g.mo5810q()) {
            return abstractC7966g.mo5814m();
        }
        if (abstractC7966g.mo5812o()) {
            throw new CancellationException("Task is already canceled");
        }
        if (!abstractC7966g.mo5811p()) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
        throw new IllegalStateException(abstractC7966g.mo5815l());
    }

    /* renamed from: l */
    private String m1629l() {
        return "[DEFAULT]".equals(this.f39512f.m2531i()) ? "" : this.f39512f.m2529k();
    }

    /* renamed from: q */
    public static boolean m1624q() {
        boolean z = false;
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            if (Build.VERSION.SDK_INT == 23) {
                if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: s */
    static boolean m1622s(String str) {
        return f39509c.matcher(str).matches();
    }

    /* renamed from: t */
    static boolean m1621t(String str) {
        return str.contains(":");
    }

    /* renamed from: z */
    private static String m1615z(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? BasicSQLHelper.ALL : str;
    }

    /* renamed from: A */
    void m1645A() {
        synchronized (this) {
            f39508b.m1580d();
        }
    }

    /* renamed from: B */
    public void m1644B(boolean z) {
        synchronized (this) {
            this.f39517k = z;
        }
    }

    /* renamed from: C */
    void m1643C() {
        synchronized (this) {
            if (!this.f39517k) {
                m1642D(0L);
            }
        }
    }

    /* renamed from: D */
    public void m1642D(long j) {
        synchronized (this) {
            m1635f(new RunnableC9200v(this, Math.min(Math.max(30L, j + j), f39507a)), j);
            this.f39517k = true;
        }
    }

    /* renamed from: E */
    public boolean m1641E(C9198u.C9199a c9199a) {
        return c9199a == null || c9199a.m1571c(this.f39513g.m1596a());
    }

    /* renamed from: a */
    public void m1640a(AbstractC9202a.AbstractC9203a abstractC9203a) {
        this.f39518l.add(abstractC9203a);
    }

    /* renamed from: d */
    public String m1637d() {
        return m1627n(C9190n.m1594c(this.f39512f), BasicSQLHelper.ALL);
    }

    /* renamed from: f */
    public void m1635f(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f39510d == null) {
                    f39510d = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC6244a("FirebaseInstanceId"));
                }
                f39510d.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public C8849c m1634g() {
        return this.f39512f;
    }

    /* renamed from: h */
    String m1633h() {
        try {
            f39508b.m1575i(this.f39512f.m2529k());
            return (String) m1638c(this.f39516j.getId());
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Deprecated
    /* renamed from: i */
    public AbstractC7966g<AbstractC9188l> m1632i() {
        m1636e(this.f39512f);
        return m1631j(C9190n.m1594c(this.f39512f), BasicSQLHelper.ALL);
    }

    @Deprecated
    /* renamed from: m */
    public String m1628m() {
        m1636e(this.f39512f);
        C9198u.C9199a m1626o = m1626o();
        if (m1641E(m1626o)) {
            m1643C();
        }
        return C9198u.C9199a.m1572b(m1626o);
    }

    @Deprecated
    /* renamed from: n */
    public String m1627n(String str, String str2) {
        m1636e(this.f39512f);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((AbstractC9188l) m1639b(m1631j(str, str2))).mo1597a();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* renamed from: o */
    public C9198u.C9199a m1626o() {
        return m1625p(C9190n.m1594c(this.f39512f), BasicSQLHelper.ALL);
    }

    /* renamed from: p */
    C9198u.C9199a m1625p(String str, String str2) {
        return f39508b.m1578f(m1629l(), str, str2);
    }

    /* renamed from: r */
    public boolean m1623r() {
        return this.f39513g.m1590g();
    }

    /* renamed from: v */
    public final /* synthetic */ AbstractC7966g m1619v(String str, String str2, String str3, String str4) {
        f39508b.m1576h(m1629l(), str, str2, str4, this.f39513g.m1596a());
        return C7970j.m5798e(new C9189m(str3, str4));
    }

    /* renamed from: w */
    public final /* synthetic */ void m1618w(C9198u.C9199a c9199a, AbstractC9188l abstractC9188l) {
        String mo1597a = abstractC9188l.mo1597a();
        if (c9199a == null || !mo1597a.equals(c9199a.f39567b)) {
            for (AbstractC9202a.AbstractC9203a abstractC9203a : this.f39518l) {
                abstractC9203a.mo1179a(mo1597a);
            }
        }
    }

    /* renamed from: x */
    public final /* synthetic */ AbstractC7966g m1617x(String str, String str2, String str3, C9198u.C9199a c9199a) {
        return this.f39514h.m1603d(str, str2, str3).mo5808s(this.f39511e, new AbstractC7964f(this, str2, str3, str) { // from class: com.google.firebase.iid.g

            /* renamed from: a */
            private final FirebaseInstanceId f39532a;

            /* renamed from: b */
            private final String f39533b;

            /* renamed from: c */
            private final String f39534c;

            /* renamed from: d */
            private final String f39535d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39532a = this;
                this.f39533b = str2;
                this.f39534c = str3;
                this.f39535d = str;
            }

            @Override // com.google.android.gms.tasks.AbstractC7964f
            /* renamed from: a */
            public AbstractC7966g mo1607a(Object obj) {
                return this.f39532a.m1619v(this.f39533b, this.f39534c, this.f39535d, (String) obj);
            }
        }).mo5820g(ExecutorC9184h.f39536d, new AbstractC7962e(this, c9199a) { // from class: com.google.firebase.iid.i

            /* renamed from: a */
            private final FirebaseInstanceId f39537a;

            /* renamed from: b */
            private final C9198u.C9199a f39538b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39537a = this;
                this.f39538b = c9199a;
            }

            @Override // com.google.android.gms.tasks.AbstractC7962e
            public void onSuccess(Object obj) {
                this.f39537a.m1618w(this.f39538b, (AbstractC9188l) obj);
            }
        });
    }

    /* renamed from: y */
    public final /* synthetic */ AbstractC7966g m1616y(String str, String str2, AbstractC7966g abstractC7966g) {
        String m1633h = m1633h();
        C9198u.C9199a m1625p = m1625p(str, str2);
        return !m1641E(m1625p) ? C7970j.m5798e(new C9189m(m1633h, m1625p.f39567b)) : this.f39515i.m1588a(str, str2, new C9195s.AbstractC9196a(this, m1633h, str, str2, m1625p) { // from class: com.google.firebase.iid.f

            /* renamed from: a */
            private final FirebaseInstanceId f39527a;

            /* renamed from: b */
            private final String f39528b;

            /* renamed from: c */
            private final String f39529c;

            /* renamed from: d */
            private final String f39530d;

            /* renamed from: e */
            private final C9198u.C9199a f39531e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39527a = this;
                this.f39528b = m1633h;
                this.f39529c = str;
                this.f39530d = str2;
                this.f39531e = m1625p;
            }

            @Override // com.google.firebase.iid.C9195s.AbstractC9196a
            public AbstractC7966g start() {
                return this.f39527a.m1617x(this.f39528b, this.f39529c, this.f39530d, this.f39531e);
            }
        });
    }
}
