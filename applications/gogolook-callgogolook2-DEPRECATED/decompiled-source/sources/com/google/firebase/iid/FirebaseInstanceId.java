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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import javax.annotation.Nonnull;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7089b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9383a;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p362r.AbstractC9855b;
import p081h.p203i.p325c.p362r.AbstractC9857d;
import p081h.p203i.p325c.p362r.C9854a;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p364t.AbstractC9912v;
import p081h.p203i.p325c.p364t.C9873e0;
import p081h.p203i.p325c.p364t.C9878h;
import p081h.p203i.p325c.p364t.C9881i0;
import p081h.p203i.p325c.p364t.C9899q0;
import p081h.p203i.p325c.p364t.C9901r;
import p081h.p203i.p325c.p364t.C9914w;
import p081h.p203i.p325c.p364t.ExecutorC9885k;
import p081h.p203i.p325c.p364t.RunnableC9902r0;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {

    /* renamed from: j */
    public static C9899q0 f7748j;
    @GuardedBy("FirebaseInstanceId.class")

    /* renamed from: l */
    public static ScheduledExecutorService f7750l;

    /* renamed from: a */
    public final Executor f7751a;

    /* renamed from: b */
    public final C9435c f7752b;

    /* renamed from: c */
    public final C9873e0 f7753c;

    /* renamed from: d */
    public final C9901r f7754d;

    /* renamed from: e */
    public final C9881i0 f7755e;

    /* renamed from: f */
    public final AbstractC9941h f7756f;
    @GuardedBy("this")

    /* renamed from: g */
    public boolean f7757g;

    /* renamed from: h */
    public final C3672a f7758h;

    /* renamed from: i */
    public static final long f7747i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: k */
    public static final Pattern f7749k = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: com.google.firebase.iid.FirebaseInstanceId$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$a.class */
    public class C3672a {

        /* renamed from: a */
        public boolean f7759a;

        /* renamed from: b */
        public final AbstractC9857d f7760b;
        @GuardedBy("this")

        /* renamed from: c */
        public boolean f7761c;
        @Nullable
        @GuardedBy("this")

        /* renamed from: d */
        public AbstractC9855b<C9383a> f7762d;
        @Nullable
        @GuardedBy("this")

        /* renamed from: e */
        public Boolean f7763e;

        public C3672a(AbstractC9857d dVar) {
            this.f7760b = dVar;
        }

        /* renamed from: a */
        public void m31077a() {
            synchronized (this) {
                if (!this.f7761c) {
                    this.f7759a = m31073c();
                    this.f7763e = m31072d();
                    if (this.f7763e == null && this.f7759a) {
                        this.f7762d = new AbstractC9855b(this) { // from class: h.i.c.t.o

                            /* renamed from: a */
                            public final FirebaseInstanceId.C3672a f22393a;

                            {
                                this.f22393a = this;
                            }

                            @Override // p081h.p203i.p325c.p362r.AbstractC9855b
                            /* renamed from: a */
                            public final void mo14046a(C9854a aVar) {
                                this.f22393a.m31076a(aVar);
                            }
                        };
                        this.f7760b.mo14078a(C9383a.class, this.f7762d);
                    }
                    this.f7761c = true;
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ void m31076a(C9854a aVar) {
            synchronized (this) {
                if (m31074b()) {
                    FirebaseInstanceId.this.m31079j();
                }
            }
        }

        /* renamed from: a */
        public void m31075a(boolean z) {
            synchronized (this) {
                m31077a();
                if (this.f7762d != null) {
                    this.f7760b.mo14076b(C9383a.class, this.f7762d);
                    this.f7762d = null;
                }
                SharedPreferences.Editor edit = FirebaseInstanceId.this.f7752b.m15173b().getSharedPreferences("com.google.firebase.messaging", 0).edit();
                edit.putBoolean("auto_init", z);
                edit.apply();
                if (z) {
                    FirebaseInstanceId.this.m31079j();
                }
                this.f7763e = Boolean.valueOf(z);
            }
        }

        /* renamed from: b */
        public boolean m31074b() {
            synchronized (this) {
                m31077a();
                if (this.f7763e == null) {
                    return this.f7759a && FirebaseInstanceId.this.f7752b.m15166g();
                }
                return this.f7763e.booleanValue();
            }
        }

        /* renamed from: c */
        public final boolean m31073c() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException e) {
                Context b = FirebaseInstanceId.this.f7752b.m15173b();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(b.getPackageName());
                ResolveInfo resolveService = b.getPackageManager().resolveService(intent, 0);
                return (resolveService == null || resolveService.serviceInfo == null) ? false : true;
            }
        }

        @Nullable
        /* renamed from: d */
        public final Boolean m31072d() {
            ApplicationInfo applicationInfo;
            Context b = FirebaseInstanceId.this.f7752b.m15173b();
            SharedPreferences sharedPreferences = b.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = b.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(b.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
    }

    public FirebaseInstanceId(C9435c cVar, AbstractC9857d dVar, AbstractC9393i iVar, AbstractC9861d dVar2, AbstractC9941h hVar) {
        this(cVar, new C9873e0(cVar.m15173b()), C9878h.m14049b(), C9878h.m14049b(), dVar, iVar, dVar2, hVar);
    }

    public FirebaseInstanceId(C9435c cVar, C9873e0 e0Var, Executor executor, Executor executor2, AbstractC9857d dVar, AbstractC9393i iVar, AbstractC9861d dVar2, AbstractC9941h hVar) {
        this.f7757g = false;
        if (C9873e0.m14064a(cVar) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (f7748j == null) {
                        f7748j = new C9899q0(cVar.m15173b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f7752b = cVar;
            this.f7753c = e0Var;
            this.f7754d = new C9901r(cVar, e0Var, iVar, dVar2, hVar);
            this.f7751a = executor2;
            this.f7758h = new C3672a(dVar);
            this.f7755e = new C9881i0(executor);
            this.f7756f = hVar;
            executor2.execute(new Runnable(this) { // from class: h.i.c.t.i

                /* renamed from: a */
                public final FirebaseInstanceId f22369a;

                {
                    this.f22369a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22369a.m31082g();
                }
            });
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    /* renamed from: a */
    public static void m31103a(@NonNull C9435c cVar) {
        C7021t.m21287a(cVar.m15169d().m15147d(), (Object) "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        C7021t.m21287a(cVar.m15169d().m15149b(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        C7021t.m21287a(cVar.m15169d().m15151a(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        C7021t.m21285a(m31090b(cVar.m15169d().m15149b()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7021t.m21285a(m31100a(cVar.m15169d().m15151a()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: a */
    public static boolean m31100a(@Nonnull String str) {
        return f7749k.matcher(str).matches();
    }

    /* renamed from: b */
    public static <T> T m31091b(@NonNull AbstractC9143h<T> hVar) throws InterruptedException {
        C7021t.m21289a(hVar, "Task must not be null");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        hVar.mo16018a(ExecutorC9885k.f22376a, new AbstractC9132c(countDownLatch) { // from class: h.i.c.t.l

            /* renamed from: a */
            public final CountDownLatch f22379a;

            {
                this.f22379a = countDownLatch;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
            /* renamed from: a */
            public final void mo3743a(AbstractC9143h hVar2) {
                this.f22379a.countDown();
            }
        });
        countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        return (T) m31087c(hVar);
    }

    /* renamed from: b */
    public static boolean m31090b(@Nonnull String str) {
        return str.contains(":");
    }

    /* renamed from: c */
    public static <T> T m31087c(@NonNull AbstractC9143h<T> hVar) {
        if (hVar.mo16009e()) {
            return hVar.mo16014b();
        }
        if (hVar.mo16011c()) {
            throw new CancellationException("Task is already canceled");
        } else if (hVar.mo16010d()) {
            throw new IllegalStateException(hVar.mo16030a());
        } else {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    /* renamed from: c */
    public static String m31086c(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    public static void clearInstancesForTest() {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f7750l != null) {
                    f7750l.shutdownNow();
                }
                f7750l = null;
                f7748j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public static FirebaseInstanceId getInstance() {
        return getInstance(C9435c.m15163j());
    }

    @NonNull
    @Keep
    public static FirebaseInstanceId getInstance(@NonNull C9435c cVar) {
        m31103a(cVar);
        return (FirebaseInstanceId) cVar.m15176a(FirebaseInstanceId.class);
    }

    /* renamed from: k */
    public static boolean m31078k() {
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
        }
        return true;
    }

    /* renamed from: a */
    public final AbstractC9143h<AbstractC9912v> m31099a(final String str, String str2) {
        final String c = m31086c(str2);
        return C9148k.m15999a((Object) null).mo16012b(this.f7751a, new AbstractC9128a(this, str, c) { // from class: h.i.c.t.j

            /* renamed from: a */
            public final FirebaseInstanceId f22372a;

            /* renamed from: b */
            public final String f22373b;

            /* renamed from: c */
            public final String f22374c;

            {
                this.f22372a = this;
                this.f22373b = str;
                this.f22374c = c;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
            /* renamed from: a */
            public final Object mo14017a(AbstractC9143h hVar) {
                return this.f22372a.m31098a(this.f22373b, this.f22374c, hVar);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h m31098a(final String str, final String str2, AbstractC9143h hVar) throws Exception {
        final String d = m31085d();
        C9899q0.C9900a b = m31089b(str, str2);
        return !m31102a(b) ? C9148k.m15999a(new C9914w(d, b.f22416a)) : this.f7755e.m14047a(str, str2, new C9881i0.AbstractC9882a(this, d, str, str2) { // from class: h.i.c.t.m

            /* renamed from: a */
            public final FirebaseInstanceId f22381a;

            /* renamed from: b */
            public final String f22382b;

            /* renamed from: c */
            public final String f22383c;

            /* renamed from: d */
            public final String f22384d;

            {
                this.f22381a = this;
                this.f22382b = d;
                this.f22383c = str;
                this.f22384d = str2;
            }

            @Override // p081h.p203i.p325c.p364t.C9881i0.AbstractC9882a
            public final AbstractC9143h start() {
                return this.f22381a.m31097a(this.f22382b, this.f22383c, this.f22384d);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h m31097a(final String str, final String str2, final String str3) {
        return this.f7754d.m13990b(str, str2, str3).mo16015a(this.f7751a, new AbstractC9141g(this, str2, str3, str) { // from class: h.i.c.t.n

            /* renamed from: a */
            public final FirebaseInstanceId f22388a;

            /* renamed from: b */
            public final String f22389b;

            /* renamed from: c */
            public final String f22390c;

            /* renamed from: d */
            public final String f22391d;

            {
                this.f22388a = this;
                this.f22389b = str2;
                this.f22390c = str3;
                this.f22391d = str;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9141g
            /* renamed from: a */
            public final AbstractC9143h mo13756a(Object obj) {
                return this.f22388a.m31096a(this.f22389b, this.f22390c, this.f22391d, (String) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h m31096a(String str, String str2, String str3, String str4) throws Exception {
        f7748j.m14012a(m31084e(), str, str2, str4, this.f7753c.m14065a());
        return C9148k.m15999a(new C9914w(str3, str4));
    }

    /* renamed from: a */
    public final <T> T m31104a(AbstractC9143h<T> hVar) throws IOException {
        try {
            return (T) C9148k.m16002a(hVar, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    m31081h();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e2);
            }
        }
    }

    /* renamed from: a */
    public String m31107a() throws IOException {
        return getToken(C9873e0.m14064a(this.f7752b), "*");
    }

    /* renamed from: a */
    public void m31106a(long j) {
        synchronized (this) {
            m31101a(new RunnableC9902r0(this, Math.min(Math.max(30L, j << 1), f7747i)), j);
            this.f7757g = true;
        }
    }

    /* renamed from: a */
    public void m31101a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f7750l == null) {
                    f7750l = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC7089b("FirebaseInstanceId"));
                }
                f7750l.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m31094a(boolean z) {
        synchronized (this) {
            this.f7757g = z;
        }
    }

    /* renamed from: a */
    public boolean m31102a(@Nullable C9899q0.C9900a aVar) {
        return aVar == null || aVar.m14001a(this.f7753c.m14065a());
    }

    @Nullable
    /* renamed from: b */
    public C9899q0.C9900a m31089b(String str, String str2) {
        return f7748j.m14007c(m31084e(), str, str2);
    }

    /* renamed from: b */
    public void m31093b() {
        f7748j.m14008c(m31084e());
        m31080i();
    }

    /* renamed from: c */
    public C9435c m31088c() {
        return this.f7752b;
    }

    /* renamed from: d */
    public String m31085d() {
        try {
            f7748j.m14004f(this.f7752b.m15168e());
            return (String) m31091b(this.f7756f.getId());
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    @WorkerThread
    public void deleteInstanceId() throws IOException {
        m31103a(this.f7752b);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            m31104a(this.f7756f.mo13899a());
            m31081h();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    @WorkerThread
    public void deleteToken(@NonNull String str, @NonNull String str2) throws IOException {
        m31103a(this.f7752b);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String c = m31086c(str2);
            m31104a(this.f7754d.m13994a(m31085d(), str, c));
            f7748j.m14009b(m31084e(), str, c);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    /* renamed from: e */
    public final String m31084e() {
        return "[DEFAULT]".equals(this.f7752b.m15170c()) ? "" : this.f7752b.m15168e();
    }

    @Nullable
    /* renamed from: f */
    public C9899q0.C9900a m31083f() {
        return m31089b(C9873e0.m14064a(this.f7752b), "*");
    }

    /* renamed from: g */
    public final /* synthetic */ void m31082g() {
        if (isFcmAutoInitEnabled()) {
            m31079j();
        }
    }

    public long getCreationTime() {
        return f7748j.m14006d(this.f7752b.m15168e());
    }

    @NonNull
    @WorkerThread
    public String getId() {
        m31103a(this.f7752b);
        m31079j();
        return m31085d();
    }

    @NonNull
    public AbstractC9143h<AbstractC9912v> getInstanceId() {
        m31103a(this.f7752b);
        return m31099a(C9873e0.m14064a(this.f7752b), "*");
    }

    @Nullable
    @Deprecated
    public String getToken() {
        m31103a(this.f7752b);
        C9899q0.C9900a f = m31083f();
        if (m31102a(f)) {
            m31080i();
        }
        return C9899q0.C9900a.m14002a(f);
    }

    @Nullable
    @WorkerThread
    public String getToken(@NonNull String str, @NonNull String str2) throws IOException {
        m31103a(this.f7752b);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((AbstractC9912v) m31104a(m31099a(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* renamed from: h */
    public void m31081h() {
        synchronized (this) {
            f7748j.m14016a();
            if (isFcmAutoInitEnabled()) {
                m31080i();
            }
        }
    }

    /* renamed from: i */
    public void m31080i() {
        synchronized (this) {
            if (!this.f7757g) {
                m31106a(0L);
            }
        }
    }

    public boolean isFcmAutoInitEnabled() {
        return this.f7758h.m31074b();
    }

    public boolean isGmsCorePresent() {
        return this.f7753c.m14059e();
    }

    /* renamed from: j */
    public final void m31079j() {
        if (m31102a(m31083f())) {
            m31080i();
        }
    }

    public void setFcmAutoInitEnabled(boolean z) {
        this.f7758h.m31075a(z);
    }
}
