package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15580a;
import com.google.firebase.C15601b;
import com.google.firebase.iid.p395a.AbstractC15760a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.messaging.C15849aj;
import com.google.firebase.messaging.C15855ao;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.p389b.AbstractC15607b;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p389b.C15606a;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p394f.AbstractC15754i;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {

    /* renamed from: f */
    static AbstractC10679g f56267f;

    /* renamed from: g */
    static ScheduledExecutorService f56268g;

    /* renamed from: h */
    private static final long f56269h = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: i */
    private static C15855ao f56270i;

    /* renamed from: a */
    final Context f56271a;

    /* renamed from: b */
    final C15901z f56272b;

    /* renamed from: c */
    final C15849aj f56273c;

    /* renamed from: d */
    final C15832a f56274d;

    /* renamed from: e */
    final C15846ag f56275e;

    /* renamed from: j */
    private final C15601b f56276j;

    /* renamed from: k */
    private final AbstractC15760a f56277k;

    /* renamed from: l */
    private final AbstractC15822h f56278l;

    /* renamed from: m */
    private final Executor f56279m;

    /* renamed from: n */
    private final Executor f56280n;

    /* renamed from: o */
    private final AbstractC14185h<C15861as> f56281o;

    /* renamed from: p */
    private boolean f56282p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.FirebaseMessaging$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging$a.class */
    public final class C15832a {

        /* renamed from: b */
        private final AbstractC15609d f56284b;

        /* renamed from: c */
        private boolean f56285c;

        /* renamed from: d */
        private AbstractC15607b<C15580a> f56286d;

        /* renamed from: e */
        private Boolean f56287e;

        C15832a(AbstractC15609d abstractC15609d) {
            FirebaseMessaging.this = r4;
            this.f56284b = abstractC15609d;
        }

        /* renamed from: b */
        private void m8249b() {
            synchronized (this) {
                if (this.f56285c) {
                    return;
                }
                Boolean m8248c = m8248c();
                this.f56287e = m8248c;
                if (m8248c == null) {
                    AbstractC15607b<C15580a> abstractC15607b = new AbstractC15607b(this) { // from class: com.google.firebase.messaging.v

                        /* renamed from: a */
                        private final FirebaseMessaging.C15832a f56442a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f56442a = this;
                        }

                        @Override // com.google.firebase.p389b.AbstractC15607b
                        /* renamed from: a */
                        public final void mo8115a(C15606a c15606a) {
                            FirebaseMessaging.C15832a c15832a = this.f56442a;
                            if (c15832a.m8250a()) {
                                FirebaseMessaging.this.m8255d();
                            }
                        }
                    };
                    this.f56286d = abstractC15607b;
                    this.f56284b.mo8506a(C15580a.class, abstractC15607b);
                }
                this.f56285c = true;
            }
        }

        /* renamed from: c */
        private Boolean m8248c() {
            ApplicationInfo applicationInfo;
            Context m8583a = FirebaseMessaging.this.f56276j.m8583a();
            SharedPreferences sharedPreferences = m8583a.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = m8583a.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m8583a.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        /* renamed from: a */
        public final boolean m8250a() {
            boolean booleanValue;
            synchronized (this) {
                m8249b();
                Boolean bool = this.f56287e;
                booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f56276j.m8572e();
            }
            return booleanValue;
        }
    }

    public FirebaseMessaging(C15601b c15601b, AbstractC15760a abstractC15760a, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h, AbstractC10679g abstractC10679g, AbstractC15609d abstractC15609d) {
        this(c15601b, abstractC15760a, abstractC15728b, abstractC15728b2, abstractC15822h, abstractC10679g, abstractC15609d, new C15846ag(c15601b.m8583a()));
    }

    FirebaseMessaging(C15601b c15601b, AbstractC15760a abstractC15760a, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h, AbstractC10679g abstractC10679g, AbstractC15609d abstractC15609d, C15846ag c15846ag) {
        this(c15601b, abstractC15760a, abstractC15822h, abstractC10679g, abstractC15609d, c15846ag, new C15901z(c15601b, c15846ag, abstractC15728b, abstractC15728b2, abstractC15822h), Executors.newSingleThreadExecutor(new ThreadFactoryC12095a("Firebase-Messaging-Task")), new ScheduledThreadPoolExecutor(1, new ThreadFactoryC12095a("Firebase-Messaging-Init")));
    }

    FirebaseMessaging(C15601b c15601b, AbstractC15760a abstractC15760a, AbstractC15822h abstractC15822h, AbstractC10679g abstractC10679g, AbstractC15609d abstractC15609d, C15846ag c15846ag, C15901z c15901z, Executor executor, Executor executor2) {
        this.f56282p = false;
        f56267f = abstractC10679g;
        this.f56276j = c15601b;
        this.f56277k = abstractC15760a;
        this.f56278l = abstractC15822h;
        this.f56274d = new C15832a(abstractC15609d);
        Context m8583a = c15601b.m8583a();
        this.f56271a = m8583a;
        this.f56275e = c15846ag;
        this.f56280n = executor;
        this.f56272b = c15901z;
        this.f56273c = new C15849aj(executor);
        this.f56279m = executor2;
        if (abstractC15760a != null) {
            abstractC15760a.mo8425a(new AbstractC15760a.AbstractC15761a(this) { // from class: com.google.firebase.messaging.p

                /* renamed from: a */
                private final FirebaseMessaging f56433a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56433a = this;
                }

                @Override // com.google.firebase.iid.p395a.AbstractC15760a.AbstractC15761a
                /* renamed from: a */
                public final void mo8117a(String str) {
                    this.f56433a.m8260a(str);
                }
            });
        }
        synchronized (FirebaseMessaging.class) {
            try {
                if (f56270i == null) {
                    f56270i = new C15855ao(m8583a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.messaging.q

            /* renamed from: a */
            private final FirebaseMessaging f56434a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56434a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging firebaseMessaging = this.f56434a;
                if (firebaseMessaging.f56274d.m8250a()) {
                    firebaseMessaging.m8255d();
                }
            }
        });
        AbstractC14185h<C15861as> m8152a = C15861as.m8152a(this, abstractC15822h, c15846ag, c15901z, m8583a, new ScheduledThreadPoolExecutor(1, new ThreadFactoryC12095a("Firebase-Messaging-Topics-Io")));
        this.f56281o = m8152a;
        m8152a.mo11480a(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC12095a("Firebase-Messaging-Trigger-Topics-Io")), new AbstractC14183f(this) { // from class: com.google.firebase.messaging.r

            /* renamed from: a */
            private final FirebaseMessaging f56435a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56435a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC14183f
            public final void onSuccess(Object obj) {
                C15861as c15861as = (C15861as) obj;
                if (this.f56435a.f56274d.m8250a()) {
                    if (!(c15861as.f56369a.m8160a() != null) || c15861as.m8148b()) {
                        return;
                    }
                    c15861as.m8155a(0L);
                }
            }
        });
    }

    /* renamed from: a */
    public static FirebaseMessaging m8265a() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = getInstance(C15601b.m8573d());
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    /* renamed from: a */
    public static void m8261a(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f56268g == null) {
                    f56268g = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC12095a("TAG"));
                }
                f56268g.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private boolean m8262a(C15855ao.C15856a c15856a) {
        return c15856a == null || c15856a.m8166b(this.f56275e.m8208b());
    }

    /* renamed from: c */
    public static AbstractC10679g m8256c() {
        return f56267f;
    }

    /* renamed from: f */
    private void m8253f() {
        synchronized (this) {
            if (!this.f56282p) {
                m8264a(0L);
            }
        }
    }

    /* renamed from: g */
    private C15855ao.C15856a m8252g() {
        return f56270i.m8173a(m8251h(), C15846ag.m8210a(this.f56276j));
    }

    static FirebaseMessaging getInstance(C15601b c15601b) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = (FirebaseMessaging) c15601b.m8577a(FirebaseMessaging.class);
                C12045o.m19161a(firebaseMessaging, "Firebase Messaging component is not present");
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    /* renamed from: h */
    private String m8251h() {
        return "[DEFAULT]".equals(this.f56276j.m8576b()) ? "" : this.f56276j.m8570g();
    }

    /* renamed from: a */
    public final void m8264a(long j) {
        synchronized (this) {
            m8261a(new RunnableC15857ap(this, Math.min(Math.max(30L, j + j), f56269h)), j);
            this.f56282p = true;
        }
    }

    /* renamed from: a */
    public final void m8260a(String str) {
        if ("[DEFAULT]".equals(this.f56276j.m8576b())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(this.f56276j.m8576b());
                if (valueOf.length() != 0) {
                    "Invoking onNewToken for app: ".concat(valueOf);
                } else {
                    new String("Invoking onNewToken for app: ");
                }
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new C15879g(this.f56271a).m8122a(intent);
        }
    }

    /* renamed from: a */
    public final void m8259a(boolean z) {
        synchronized (this) {
            this.f56282p = z;
        }
    }

    /* renamed from: b */
    public final AbstractC14185h<String> m8258b() {
        AbstractC15760a abstractC15760a = this.f56277k;
        if (abstractC15760a != null) {
            return abstractC15760a.mo8424b();
        }
        C14186i c14186i = new C14186i();
        this.f56279m.execute(new Runnable(this, c14186i) { // from class: com.google.firebase.messaging.s

            /* renamed from: a */
            private final FirebaseMessaging f56436a;

            /* renamed from: b */
            private final C14186i f56437b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56436a = this;
                this.f56437b = c14186i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging firebaseMessaging = this.f56436a;
                C14186i c14186i2 = this.f56437b;
                try {
                    c14186i2.m11471a((C14186i) firebaseMessaging.m8254e());
                } catch (Exception e) {
                    c14186i2.m11472a(e);
                }
            }
        });
        return c14186i.f52142a;
    }

    /* renamed from: d */
    public final void m8255d() {
        AbstractC15760a abstractC15760a = this.f56277k;
        if (abstractC15760a != null) {
            abstractC15760a.mo8426a();
        } else if (!m8262a(m8252g())) {
        } else {
            m8253f();
        }
    }

    /* renamed from: e */
    public final String m8254e() throws IOException {
        AbstractC15760a abstractC15760a = this.f56277k;
        if (abstractC15760a != null) {
            try {
                return (String) C14188k.m11468a((AbstractC14185h<Object>) abstractC15760a.mo8424b());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        C15855ao.C15856a m8252g = m8252g();
        if (!m8262a(m8252g)) {
            return m8252g.f56352a;
        }
        String m8210a = C15846ag.m8210a(this.f56276j);
        try {
            String str = (String) C14188k.m11468a((AbstractC14185h<Object>) this.f56278l.mo8286b().mo11477b(C15887o.m8118a(), new AbstractC14179b(this, m8210a) { // from class: com.google.firebase.messaging.t

                /* renamed from: a */
                private final FirebaseMessaging f56438a;

                /* renamed from: b */
                private final String f56439b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56438a = this;
                    this.f56439b = m8210a;
                }

                @Override // com.google.android.gms.tasks.AbstractC14179b
                public final Object then(final AbstractC14185h abstractC14185h) {
                    final FirebaseMessaging firebaseMessaging = this.f56438a;
                    return firebaseMessaging.f56273c.m8182a(this.f56439b, new C15849aj.AbstractC15850a(firebaseMessaging, abstractC14185h) { // from class: com.google.firebase.messaging.u

                        /* renamed from: a */
                        private final FirebaseMessaging f56440a;

                        /* renamed from: b */
                        private final AbstractC14185h f56441b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f56440a = firebaseMessaging;
                            this.f56441b = abstractC14185h;
                        }

                        @Override // com.google.firebase.messaging.C15849aj.AbstractC15850a
                        /* renamed from: a */
                        public final AbstractC14185h mo8116a() {
                            FirebaseMessaging firebaseMessaging2 = this.f56440a;
                            AbstractC14185h abstractC14185h2 = this.f56441b;
                            C15901z c15901z = firebaseMessaging2.f56272b;
                            return c15901z.m8113a(c15901z.m8111a((String) abstractC14185h2.mo11475d(), C15846ag.m8210a(c15901z.f56448a), "*", new Bundle()));
                        }
                    });
                }
            }));
            f56270i.m8172a(m8251h(), m8210a, str, this.f56275e.m8208b());
            if (m8252g == null || !str.equals(m8252g.f56352a)) {
                m8260a(str);
            }
            return str;
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }
}
