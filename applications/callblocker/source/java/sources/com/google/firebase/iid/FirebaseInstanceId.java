package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.p133a.ThreadFactoryC2702a;
import com.google.android.gms.tasks.AbstractC4459a;
import com.google.android.gms.tasks.AbstractC4465c;
import com.google.android.gms.tasks.AbstractC4468f;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import com.google.firebase.C4853a;
import com.google.firebase.C4865b;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.installations.AbstractC5033h;
import com.google.firebase.p161a.AbstractC4855b;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p161a.C4854a;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {

    /* renamed from: a */
    private static final long f21055a = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: b */
    private static C4999z f21056b;
    @GuardedBy("FirebaseInstanceId.class")

    /* renamed from: c */
    private static ScheduledExecutorService f21057c;

    /* renamed from: d */
    private final Executor f21058d;

    /* renamed from: e */
    private final C4865b f21059e;

    /* renamed from: f */
    private final C4988o f21060f;

    /* renamed from: g */
    private final C4970bc f21061g;

    /* renamed from: h */
    private final C4993t f21062h;

    /* renamed from: i */
    private final AbstractC5033h f21063i;
    @GuardedBy("this")

    /* renamed from: j */
    private boolean f21064j;

    /* renamed from: k */
    private final C4936a f21065k;

    /* renamed from: com.google.firebase.iid.FirebaseInstanceId$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$a.class */
    public final class C4936a {

        /* renamed from: b */
        private boolean f21067b;

        /* renamed from: c */
        private final AbstractC4857d f21068c;
        @GuardedBy("this")

        /* renamed from: d */
        private boolean f21069d;
        @GuardedBy("this")

        /* renamed from: e */
        private AbstractC4855b<C4853a> f21070e;
        @GuardedBy("this")

        /* renamed from: f */
        private Boolean f21071f;

        C4936a(AbstractC4857d abstractC4857d) {
            FirebaseInstanceId.this = r4;
            this.f21068c = abstractC4857d;
        }

        /* renamed from: b */
        private final void m1977b() {
            synchronized (this) {
                if (!this.f21069d) {
                    this.f21067b = m1975d();
                    this.f21071f = m1976c();
                    if (this.f21071f == null && this.f21067b) {
                        this.f21070e = new AbstractC4855b(this) { // from class: com.google.firebase.iid.az

                            /* renamed from: a */
                            private final FirebaseInstanceId.C4936a f21117a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f21117a = this;
                            }

                            @Override // com.google.firebase.p161a.AbstractC4855b
                            /* renamed from: a */
                            public final void mo1954a(C4854a c4854a) {
                                FirebaseInstanceId.C4936a c4936a = this.f21117a;
                                synchronized (c4936a) {
                                    if (c4936a.m1978a()) {
                                        FirebaseInstanceId.this.m1982k();
                                    }
                                }
                            }
                        };
                        this.f21068c.mo2064a(C4853a.class, this.f21070e);
                    }
                    this.f21069d = true;
                }
            }
        }

        /* renamed from: c */
        private final Boolean m1976c() {
            Boolean bool;
            ApplicationInfo applicationInfo;
            Context m2160a = FirebaseInstanceId.this.f21059e.m2160a();
            SharedPreferences sharedPreferences = m2160a.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                bool = Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            } else {
                try {
                    PackageManager packageManager = m2160a.getPackageManager();
                    if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m2160a.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                        bool = Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
                bool = null;
            }
            return bool;
        }

        /* renamed from: d */
        private final boolean m1975d() {
            boolean z = true;
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
            } catch (ClassNotFoundException e) {
                Context m2160a = FirebaseInstanceId.this.f21059e.m2160a();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(m2160a.getPackageName());
                ResolveInfo resolveService = m2160a.getPackageManager().resolveService(intent, 0);
                if (resolveService == null || resolveService.serviceInfo == null) {
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: a */
        public final boolean m1978a() {
            boolean booleanValue;
            synchronized (this) {
                m1977b();
                booleanValue = this.f21071f != null ? this.f21071f.booleanValue() : this.f21067b && FirebaseInstanceId.this.f21059e.m2146e();
            }
            return booleanValue;
        }
    }

    public FirebaseInstanceId(C4865b c4865b, AbstractC4857d abstractC4857d, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c, AbstractC5033h abstractC5033h) {
        this(c4865b, new C4988o(c4865b.m2160a()), C4956aq.m1958b(), C4956aq.m1958b(), abstractC4857d, abstractC4935h, abstractC4873c, abstractC5033h);
    }

    private FirebaseInstanceId(C4865b c4865b, C4988o c4988o, Executor executor, Executor executor2, AbstractC4857d abstractC4857d, AbstractC4935h abstractC4935h, AbstractC4873c abstractC4873c, AbstractC5033h abstractC5033h) {
        this.f21064j = false;
        if (C4988o.m1920a(c4865b) == null) {
            throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
        }
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f21056b == null) {
                    f21056b = new C4999z(c4865b.m2160a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f21059e = c4865b;
        this.f21060f = c4988o;
        this.f21061g = new C4970bc(c4865b, c4988o, executor, abstractC4935h, abstractC4873c, abstractC5033h);
        this.f21058d = executor2;
        this.f21065k = new C4936a(abstractC4857d);
        this.f21062h = new C4993t(executor);
        this.f21063i = abstractC5033h;
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.iid.au

            /* renamed from: a */
            private final FirebaseInstanceId f21106a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21106a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21106a.m1983j();
            }
        });
    }

    /* renamed from: a */
    public static FirebaseInstanceId m2008a() {
        return getInstance(C4865b.m2147d());
    }

    /* renamed from: a */
    private final <T> T m2006a(AbstractC4469g<T> abstractC4469g) {
        try {
            return (T) C4473j.m3883a(abstractC4469g, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    m1986g();
                }
                throw ((IOException) cause);
            } else if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            } else {
                throw ((RuntimeException) cause);
            }
        } catch (TimeoutException e3) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r3.equalsIgnoreCase("gcm") != false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m2001a(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L1b
            r0 = r3
            java.lang.String r1 = "fcm"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L1b
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = "gcm"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L1e
        L1b:
            java.lang.String r0 = "*"
            r4 = r0
        L1e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.FirebaseInstanceId.m2001a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    private static void m2005a(C4865b c4865b) {
        C2662s.m13978a(c4865b.m2148c().m2046d(), (Object) "FirebaseApp has to define a valid projectId.");
        C2662s.m13978a(c4865b.m2148c().m2048b(), (Object) "FirebaseApp has to define a valid applicationId.");
        C2662s.m13978a(c4865b.m2148c().m2050a(), (Object) "FirebaseApp has to define a valid apiKey.");
    }

    /* renamed from: a */
    public static void m2002a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f21057c == null) {
                    f21057c = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC2702a("FirebaseInstanceId"));
                }
                f21057c.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private final AbstractC4469g<AbstractC4938a> m1992b(String str, String str2) {
        return C4473j.m3880a((Object) null).mo3893b(this.f21058d, new AbstractC4459a(this, str, m2001a(str2)) { // from class: com.google.firebase.iid.at

            /* renamed from: a */
            private final FirebaseInstanceId f21103a;

            /* renamed from: b */
            private final String f21104b;

            /* renamed from: c */
            private final String f21105c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21103a = this;
                this.f21104b = str;
                this.f21105c = m2001a;
            }

            @Override // com.google.android.gms.tasks.AbstractC4459a
            /* renamed from: a */
            public final Object mo1911a(AbstractC4469g abstractC4469g) {
                return this.f21103a.m1999a(this.f21104b, this.f21105c, abstractC4469g);
            }
        });
    }

    /* renamed from: c */
    private final C4998y m1990c(String str, String str2) {
        return f21056b.m1887a(m1979n(), str, str2);
    }

    /* renamed from: f */
    public static boolean m1987f() {
        return Log.isLoggable("FirebaseInstanceId", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3));
    }

    @Keep
    public static FirebaseInstanceId getInstance(C4865b c4865b) {
        return (FirebaseInstanceId) c4865b.m2153a(FirebaseInstanceId.class);
    }

    /* renamed from: k */
    public final void m1982k() {
        if (m2003a(m1989d())) {
            m1981l();
        }
    }

    /* renamed from: l */
    private final void m1981l() {
        synchronized (this) {
            if (!this.f21064j) {
                m2007a(0L);
            }
        }
    }

    /* renamed from: m */
    private final String m1980m() {
        try {
            f21056b.m1889a(this.f21059e.m2144g());
            AbstractC4469g<String> mo1781d = this.f21063i.mo1781d();
            C2662s.m13980a(mo1781d, "Task must not be null");
            CountDownLatch countDownLatch = new CountDownLatch(1);
            mo1781d.mo3898a(ExecutorC4963aw.f21108a, new AbstractC4465c(countDownLatch) { // from class: com.google.firebase.iid.av

                /* renamed from: a */
                private final CountDownLatch f21107a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21107a = countDownLatch;
                }

                @Override // com.google.android.gms.tasks.AbstractC4465c
                /* renamed from: a */
                public final void mo1947a(AbstractC4469g abstractC4469g) {
                    this.f21107a.countDown();
                }
            });
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
            if (mo1781d.mo3894b()) {
                return mo1781d.mo3891d();
            }
            if (!mo1781d.mo3892c()) {
                throw new IllegalStateException(mo1781d.mo3890e());
            }
            throw new CancellationException("Task is already canceled");
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: n */
    private final String m1979n() {
        return "[DEFAULT]".equals(this.f21059e.m2150b()) ? "" : this.f21059e.m2144g();
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC4469g m1999a(String str, String str2, AbstractC4469g abstractC4469g) {
        String m1980m = m1980m();
        C4998y m1990c = m1990c(str, str2);
        return !m2003a(m1990c) ? C4473j.m3880a(new C4976c(m1980m, m1990c.f21194a)) : this.f21062h.m1909a(str, str2, new AbstractC4995v(this, m1980m, str, str2) { // from class: com.google.firebase.iid.ay

            /* renamed from: a */
            private final FirebaseInstanceId f21113a;

            /* renamed from: b */
            private final String f21114b;

            /* renamed from: c */
            private final String f21115c;

            /* renamed from: d */
            private final String f21116d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21113a = this;
                this.f21114b = m1980m;
                this.f21115c = str;
                this.f21116d = str2;
            }

            @Override // com.google.firebase.iid.AbstractC4995v
            /* renamed from: a */
            public final AbstractC4469g mo1900a() {
                return this.f21113a.m1998a(this.f21114b, this.f21115c, this.f21116d);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC4469g m1998a(String str, String str2, String str3) {
        return this.f21061g.m1944a(str, str2, str3).mo3895a(this.f21058d, new AbstractC4468f(this, str2, str3, str) { // from class: com.google.firebase.iid.ax

            /* renamed from: a */
            private final FirebaseInstanceId f21109a;

            /* renamed from: b */
            private final String f21110b;

            /* renamed from: c */
            private final String f21111c;

            /* renamed from: d */
            private final String f21112d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21109a = this;
                this.f21110b = str2;
                this.f21111c = str3;
                this.f21112d = str;
            }

            @Override // com.google.android.gms.tasks.AbstractC4468f
            /* renamed from: a */
            public final AbstractC4469g mo1955a(Object obj) {
                return this.f21109a.m1997a(this.f21110b, this.f21111c, this.f21112d, (String) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC4469g m1997a(String str, String str2, String str3, String str4) {
        f21056b.m1886a(m1979n(), str, str2, str4, this.f21060f.m1917c());
        return C4473j.m3880a(new C4976c(str3, str4));
    }

    /* renamed from: a */
    public String m2000a(String str, String str2) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        return ((AbstractC4938a) m2006a(m1992b(str, str2))).mo1938a();
    }

    /* renamed from: a */
    public final void m2007a(long j) {
        synchronized (this) {
            m2002a(new RunnableC4942ac(this, Math.min(Math.max(30L, j << 1), f21055a)), j);
            this.f21064j = true;
        }
    }

    /* renamed from: a */
    public final void m1995a(boolean z) {
        synchronized (this) {
            this.f21064j = z;
        }
    }

    /* renamed from: a */
    public final boolean m2003a(C4998y c4998y) {
        return c4998y == null || c4998y.m1891b(this.f21060f.m1917c());
    }

    /* renamed from: b */
    public final C4865b m1994b() {
        return this.f21059e;
    }

    /* renamed from: c */
    public String m1991c() {
        m2005a(this.f21059e);
        m1982k();
        return m1980m();
    }

    /* renamed from: d */
    public final C4998y m1989d() {
        return m1990c(C4988o.m1920a(this.f21059e), "*");
    }

    /* renamed from: e */
    public final String m1988e() {
        return m2000a(C4988o.m1920a(this.f21059e), "*");
    }

    /* renamed from: g */
    public final void m1986g() {
        synchronized (this) {
            f21056b.m1890a();
            if (this.f21065k.m1978a()) {
                m1981l();
            }
        }
    }

    /* renamed from: h */
    public final boolean m1985h() {
        return this.f21060f.m1921a();
    }

    /* renamed from: i */
    public final void m1984i() {
        f21056b.m1884b(m1979n());
        m1981l();
    }

    /* renamed from: j */
    public final /* synthetic */ void m1983j() {
        if (this.f21065k.m1978a()) {
            m1982k();
        }
    }
}
