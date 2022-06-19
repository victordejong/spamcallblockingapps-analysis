package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7962e;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8833a;
import com.google.firebase.C8849c;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.p309w.AbstractC9202a;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.messaging.C9289j0;
import com.google.firebase.messaging.C9298n0;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.p312j.AbstractC9243b;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p312j.C9242a;
import com.google.firebase.p313k.AbstractC9247b;
import com.google.firebase.p315m.AbstractC9258i;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {

    /* renamed from: a */
    private static final long f39701a = TimeUnit.HOURS.toSeconds(8);
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    private static C9298n0 f39702b;
    @SuppressLint({"FirebaseUnknownNullness"})

    /* renamed from: c */
    static AbstractC4647f f39703c;

    /* renamed from: d */
    static ScheduledExecutorService f39704d;

    /* renamed from: e */
    private final C8849c f39705e;

    /* renamed from: f */
    private final AbstractC9202a f39706f;

    /* renamed from: g */
    private final AbstractC9214g f39707g;

    /* renamed from: h */
    private final Context f39708h;

    /* renamed from: i */
    private final C9268a0 f39709i;

    /* renamed from: j */
    private final C9289j0 f39710j;

    /* renamed from: k */
    private final C9260a f39711k;

    /* renamed from: l */
    private final Executor f39712l;

    /* renamed from: m */
    private final Executor f39713m;

    /* renamed from: n */
    private final AbstractC7966g<C9310s0> f39714n;

    /* renamed from: o */
    private final C9281f0 f39715o;

    /* renamed from: p */
    private boolean f39716p;

    /* renamed from: com.google.firebase.messaging.FirebaseMessaging$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging$a.class */
    public class C9260a {

        /* renamed from: a */
        private final AbstractC9245d f39717a;

        /* renamed from: b */
        private boolean f39718b;

        /* renamed from: c */
        private AbstractC9243b<C8833a> f39719c;

        /* renamed from: d */
        private Boolean f39720d;

        C9260a(AbstractC9245d abstractC9245d) {
            FirebaseMessaging.this = r4;
            this.f39717a = abstractC9245d;
        }

        /* renamed from: d */
        private Boolean m1364d() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context m2533g = FirebaseMessaging.this.f39705e.m2533g();
            SharedPreferences sharedPreferences = m2533g.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = m2533g.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m2533g.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        /* renamed from: a */
        void m1367a() {
            synchronized (this) {
                if (this.f39718b) {
                    return;
                }
                Boolean m1364d = m1364d();
                this.f39720d = m1364d;
                if (m1364d == null) {
                    AbstractC9243b<C8833a> abstractC9243b = new AbstractC9243b(this) { // from class: com.google.firebase.messaging.u

                        /* renamed from: a */
                        private final FirebaseMessaging.C9260a f39873a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f39873a = this;
                        }

                        @Override // com.google.firebase.p312j.AbstractC9243b
                        /* renamed from: a */
                        public void mo1142a(C9242a c9242a) {
                            this.f39873a.m1365c(c9242a);
                        }
                    };
                    this.f39719c = abstractC9243b;
                    this.f39717a.mo1418a(C8833a.class, abstractC9243b);
                }
                this.f39718b = true;
            }
        }

        /* renamed from: b */
        boolean m1366b() {
            boolean booleanValue;
            synchronized (this) {
                m1367a();
                Boolean bool = this.f39720d;
                booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f39705e.m2524p();
            }
            return booleanValue;
        }

        /* renamed from: c */
        public final /* synthetic */ void m1365c(C9242a c9242a) {
            if (m1366b()) {
                FirebaseMessaging.this.m1370s();
            }
        }
    }

    FirebaseMessaging(C8849c c8849c, AbstractC9202a abstractC9202a, AbstractC9214g abstractC9214g, AbstractC4647f abstractC4647f, AbstractC9245d abstractC9245d, C9281f0 c9281f0, C9268a0 c9268a0, Executor executor, Executor executor2) {
        this.f39716p = false;
        f39703c = abstractC4647f;
        this.f39705e = c8849c;
        this.f39706f = abstractC9202a;
        this.f39707g = abstractC9214g;
        this.f39711k = new C9260a(abstractC9245d);
        Context m2533g = c8849c.m2533g();
        this.f39708h = m2533g;
        this.f39715o = c9281f0;
        this.f39713m = executor;
        this.f39709i = c9268a0;
        this.f39710j = new C9289j0(executor);
        this.f39712l = executor2;
        if (abstractC9202a != null) {
            abstractC9202a.mo1562c(new AbstractC9202a.AbstractC9203a(this) { // from class: com.google.firebase.messaging.p

                /* renamed from: a */
                private final FirebaseMessaging f39832a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39832a = this;
                }

                @Override // com.google.firebase.iid.p309w.AbstractC9202a.AbstractC9203a
                /* renamed from: a */
                public void mo1179a(String str) {
                    this.f39832a.m1385d(str);
                }
            });
        }
        synchronized (FirebaseMessaging.class) {
            try {
                if (f39702b == null) {
                    f39702b = new C9298n0(m2533g);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.messaging.q

            /* renamed from: d */
            private final FirebaseMessaging f39837d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39837d = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39837d.m1374o();
            }
        });
        AbstractC7966g<C9310s0> m1166d = C9310s0.m1166d(this, abstractC9214g, c9281f0, c9268a0, m2533g, C9300o.m1187f());
        this.f39714n = m1166d;
        m1166d.mo5820g(C9300o.m1186g(), new AbstractC7962e(this) { // from class: com.google.firebase.messaging.r

            /* renamed from: a */
            private final FirebaseMessaging f39842a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39842a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC7962e
            public void onSuccess(Object obj) {
                this.f39842a.m1373p((C9310s0) obj);
            }
        });
    }

    public FirebaseMessaging(C8849c c8849c, AbstractC9202a abstractC9202a, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g, AbstractC4647f abstractC4647f, AbstractC9245d abstractC9245d) {
        this(c8849c, abstractC9202a, abstractC9247b, abstractC9247b2, abstractC9214g, abstractC4647f, abstractC9245d, new C9281f0(c8849c.m2533g()));
    }

    FirebaseMessaging(C8849c c8849c, AbstractC9202a abstractC9202a, AbstractC9247b<AbstractC9258i> abstractC9247b, AbstractC9247b<HeartBeatInfo> abstractC9247b2, AbstractC9214g abstractC9214g, AbstractC4647f abstractC4647f, AbstractC9245d abstractC9245d, C9281f0 c9281f0) {
        this(c8849c, abstractC9202a, abstractC9214g, abstractC4647f, abstractC9245d, c9281f0, new C9268a0(c8849c, c9281f0, abstractC9247b, abstractC9247b2, abstractC9214g), C9300o.m1188e(), C9300o.m1191b());
    }

    /* renamed from: g */
    private String m1382g() {
        return "[DEFAULT]".equals(this.f39705e.m2531i()) ? "" : this.f39705e.m2529k();
    }

    @Keep
    static FirebaseMessaging getInstance(C8849c c8849c) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = (FirebaseMessaging) c8849c.m2534f(FirebaseMessaging.class);
                C6155o.m17017k(firebaseMessaging, "Firebase Messaging component is not present");
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    /* renamed from: i */
    public static AbstractC4647f m1380i() {
        return f39703c;
    }

    /* renamed from: j */
    public void m1385d(String str) {
        if ("[DEFAULT]".equals(this.f39705e.m2531i())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(this.f39705e.m2531i());
                Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Invoking onNewToken for app: ".concat(valueOf) : new String("Invoking onNewToken for app: "));
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new C9297n(this.f39708h).m1203g(intent);
        }
    }

    /* renamed from: r */
    private void m1371r() {
        synchronized (this) {
            if (!this.f39716p) {
                m1369t(0L);
            }
        }
    }

    /* renamed from: s */
    public void m1370s() {
        AbstractC9202a abstractC9202a = this.f39706f;
        if (abstractC9202a != null) {
            abstractC9202a.mo1564a();
        } else if (!m1368u(m1381h())) {
        } else {
            m1371r();
        }
    }

    /* renamed from: c */
    public String m1386c() {
        AbstractC9202a abstractC9202a = this.f39706f;
        if (abstractC9202a != null) {
            try {
                return (String) C7970j.m5802a(abstractC9202a.mo1563b());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        C9298n0.C9299a m1381h = m1381h();
        if (!m1368u(m1381h)) {
            return m1381h.f39824b;
        }
        String m1262c = C9281f0.m1262c(this.f39705e);
        try {
            String str = (String) C7970j.m5802a(this.f39707g.getId().mo5816k(C9300o.m1189d(), new AbstractC7954a(this, m1262c) { // from class: com.google.firebase.messaging.s

                /* renamed from: a */
                private final FirebaseMessaging f39849a;

                /* renamed from: b */
                private final String f39850b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39849a = this;
                    this.f39850b = m1262c;
                }

                @Override // com.google.android.gms.tasks.AbstractC7954a
                /* renamed from: a */
                public Object mo1125a(AbstractC7966g abstractC7966g) {
                    return this.f39849a.m1375n(this.f39850b, abstractC7966g);
                }
            }));
            f39702b.m1196f(m1382g(), m1262c, str, this.f39715o.m1264a());
            if (m1381h == null || !str.equals(m1381h.f39824b)) {
                m1385d(str);
            }
            return str;
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }

    /* renamed from: e */
    public void m1384e(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f39704d == null) {
                    f39704d = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC6244a("TAG"));
                }
                f39704d.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public Context m1383f() {
        return this.f39708h;
    }

    /* renamed from: h */
    C9298n0.C9299a m1381h() {
        return f39702b.m1198d(m1382g(), C9281f0.m1262c(this.f39705e));
    }

    /* renamed from: k */
    public boolean m1378k() {
        return this.f39711k.m1366b();
    }

    /* renamed from: l */
    public boolean m1377l() {
        return this.f39715o.m1258g();
    }

    /* renamed from: m */
    public final /* synthetic */ AbstractC7966g m1376m(AbstractC7966g abstractC7966g) {
        return this.f39709i.m1320d((String) abstractC7966g.mo5814m());
    }

    /* renamed from: n */
    public final /* synthetic */ AbstractC7966g m1375n(String str, AbstractC7966g abstractC7966g) {
        return this.f39710j.m1227a(str, new C9289j0.AbstractC9290a(this, abstractC7966g) { // from class: com.google.firebase.messaging.t

            /* renamed from: a */
            private final FirebaseMessaging f39861a;

            /* renamed from: b */
            private final AbstractC7966g f39862b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39861a = this;
                this.f39862b = abstractC7966g;
            }

            @Override // com.google.firebase.messaging.C9289j0.AbstractC9290a
            public AbstractC7966g start() {
                return this.f39861a.m1376m(this.f39862b);
            }
        });
    }

    /* renamed from: o */
    public final /* synthetic */ void m1374o() {
        if (m1378k()) {
            m1370s();
        }
    }

    /* renamed from: p */
    public final /* synthetic */ void m1373p(C9310s0 c9310s0) {
        if (m1378k()) {
            c9310s0.m1156n();
        }
    }

    /* renamed from: q */
    public void m1372q(boolean z) {
        synchronized (this) {
            this.f39716p = z;
        }
    }

    /* renamed from: t */
    public void m1369t(long j) {
        synchronized (this) {
            m1384e(new RunnableC9301o0(this, Math.min(Math.max(30L, j + j), f39701a)), j);
            this.f39716p = true;
        }
    }

    /* renamed from: u */
    boolean m1368u(C9298n0.C9299a c9299a) {
        return c9299a == null || c9299a.m1194b(this.f39715o.m1264a());
    }
}
