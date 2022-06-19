package com.google.firebase.messaging;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import e.m.d.a0.h;
import e.m.d.f;
import e.m.d.g;
import e.m.d.s.b;
import e.m.d.s.d;
import e.m.d.u.a.a;
import e.m.d.w.i;
import e.m.d.y.c0;
import e.m.d.y.g0;
import e.m.d.y.k0;
import e.m.d.y.l0;
import e.m.d.y.o;
import e.m.d.y.p;
import e.m.d.y.q;
import e.m.d.y.q0;
import e.m.d.y.r;
import e.m.d.y.r0;
import e.m.d.y.s;
import e.m.d.y.t;
import e.m.d.y.u;
import e.m.d.y.u0;
import e.m.d.y.v;
import e.m.d.y.v0;
import e.m.d.y.y;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p193e.p1577m.p1578a.p1580b.AbstractC23992g;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {

    /* renamed from: n */
    public static final long f7030n = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: o */
    public static q0 f7031o;

    /* renamed from: p */
    public static AbstractC23992g f7032p;

    /* renamed from: q */
    public static ScheduledExecutorService f7033q;

    /* renamed from: a */
    public final g f7034a;

    /* renamed from: b */
    public final a f7035b;

    /* renamed from: c */
    public final i f7036c;

    /* renamed from: d */
    public final Context f7037d;

    /* renamed from: e */
    public final c0 f7038e;

    /* renamed from: f */
    public final l0 f7039f;

    /* renamed from: g */
    public final C2168a f7040g;

    /* renamed from: h */
    public final Executor f7041h;

    /* renamed from: i */
    public final Executor f7042i;

    /* renamed from: j */
    public final Task<v0> f7043j;

    /* renamed from: k */
    public final g0 f7044k;

    /* renamed from: l */
    public boolean f7045l = false;

    /* renamed from: m */
    public final Application.ActivityLifecycleCallbacks f7046m;

    /* renamed from: com.google.firebase.messaging.FirebaseMessaging$a */
    /* loaded from: classes3-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging$a.class */
    public class C2168a {

        /* renamed from: a */
        public final d f7047a;

        /* renamed from: b */
        public boolean f7048b;

        /* renamed from: c */
        public b<f> f7049c;

        /* renamed from: d */
        public Boolean f7050d;

        public C2168a(d dVar) {
            FirebaseMessaging.this = r4;
            this.f7047a = dVar;
        }

        /* renamed from: a */
        public void m38309a() {
            synchronized (this) {
                if (this.f7048b) {
                    return;
                }
                Boolean m38307c = m38307c();
                this.f7050d = m38307c;
                if (m38307c == null) {
                    y yVar = new y(this);
                    this.f7049c = yVar;
                    this.f7047a.a(f.class, yVar);
                }
                this.f7048b = true;
            }
        }

        /* renamed from: b */
        public boolean m38308b() {
            boolean booleanValue;
            synchronized (this) {
                m38309a();
                Boolean bool = this.f7050d;
                booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f7034a.g();
            }
            return booleanValue;
        }

        /* renamed from: c */
        public final Boolean m38307c() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            g gVar = FirebaseMessaging.this.f7034a;
            gVar.a();
            Context context = gVar.a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
    }

    public FirebaseMessaging(g gVar, a aVar, e.m.d.v.b<h> bVar, e.m.d.v.b<e.m.d.t.f> bVar2, i iVar, AbstractC23992g abstractC23992g, d dVar) {
        gVar.a();
        g0 g0Var = new g0(gVar.a);
        c0 c0Var = new c0(gVar, g0Var, bVar, bVar2, iVar);
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Task"));
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Init"));
        f7032p = abstractC23992g;
        this.f7034a = gVar;
        this.f7035b = aVar;
        this.f7036c = iVar;
        this.f7040g = new C2168a(dVar);
        gVar.a();
        Context context = gVar.a;
        this.f7037d = context;
        Application.ActivityLifecycleCallbacks oVar = new o();
        this.f7046m = oVar;
        this.f7044k = g0Var;
        this.f7042i = newSingleThreadExecutor;
        this.f7038e = c0Var;
        this.f7039f = new l0(newSingleThreadExecutor);
        this.f7041h = scheduledThreadPoolExecutor;
        gVar.a();
        Context context2 = gVar.a;
        if (context2 instanceof Application) {
            ((Application) context2).registerActivityLifecycleCallbacks(oVar);
        } else {
            String.valueOf(context2).length();
        }
        if (aVar != null) {
            aVar.c(new t(this));
        }
        scheduledThreadPoolExecutor.execute(new u(this));
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Topics-Io"));
        int i = v0.j;
        Task<v0> m38512c = Tasks.m38512c(scheduledThreadPoolExecutor2, new u0(context, scheduledThreadPoolExecutor2, this, g0Var, c0Var));
        this.f7043j = m38512c;
        m38512c.m38529i(scheduledThreadPoolExecutor, new p(this));
        scheduledThreadPoolExecutor.execute(new v(this));
    }

    /* renamed from: c */
    public static FirebaseMessaging m38318c() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = getInstance(g.b());
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    /* renamed from: d */
    public static q0 m38317d(Context context) {
        q0 q0Var;
        synchronized (FirebaseMessaging.class) {
            try {
                if (f7031o == null) {
                    f7031o = new q0(context);
                }
                q0Var = f7031o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return q0Var;
    }

    @Keep
    public static FirebaseMessaging getInstance(g gVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                gVar.a();
                firebaseMessaging = (FirebaseMessaging) gVar.d.a(FirebaseMessaging.class);
                Preconditions.m38897k(firebaseMessaging, "Firebase Messaging component is not present");
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    /* renamed from: a */
    public String m38320a() throws IOException {
        Task task;
        a aVar = this.f7035b;
        if (aVar != null) {
            try {
                return (String) Tasks.m38514a(aVar.b());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        }
        q0.a m38314g = m38314g();
        if (!m38310k(m38314g)) {
            return m38314g.a;
        }
        String b = g0.b(this.f7034a);
        l0 l0Var = this.f7039f;
        synchronized (l0Var) {
            task = (Task) l0Var.b.get(b);
            if (task == null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String valueOf = String.valueOf(b);
                    if (valueOf.length() != 0) {
                        "Making new request for: ".concat(valueOf);
                    } else {
                        new String("Making new request for: ");
                    }
                }
                c0 c0Var = this.f7038e;
                task = c0Var.a(c0Var.c(g0.b(c0Var.a), "*", new Bundle())).m38517u(r.a, new s(this, b, m38314g)).m38525m(l0Var.a, new k0(l0Var, b));
                l0Var.b.put(b, task);
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(b);
                if (valueOf2.length() != 0) {
                    "Joining ongoing request for: ".concat(valueOf2);
                } else {
                    new String("Joining ongoing request for: ");
                }
            }
        }
        try {
            return (String) Tasks.m38514a(task);
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException(e2);
        }
    }

    /* renamed from: b */
    public void m38319b(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f7033q == null) {
                    f7033q = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                f7033q.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public final String m38316e() {
        g gVar = this.f7034a;
        gVar.a();
        return "[DEFAULT]".equals(gVar.b) ? "" : this.f7034a.c();
    }

    /* renamed from: f */
    public Task<String> m38315f() {
        a aVar = this.f7035b;
        if (aVar != null) {
            return aVar.b();
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f7041h.execute(new q(this, taskCompletionSource));
        return taskCompletionSource.f6493a;
    }

    /* renamed from: g */
    public q0.a m38314g() {
        q0.a a;
        q0 m38317d = m38317d(this.f7037d);
        String m38316e = m38316e();
        String b = g0.b(this.f7034a);
        synchronized (m38317d) {
            a = q0.a.a(m38317d.a.getString(m38317d.a(m38316e, b), null));
        }
        return a;
    }

    /* renamed from: h */
    public void m38313h(boolean z) {
        synchronized (this) {
            this.f7045l = z;
        }
    }

    /* renamed from: i */
    public final void m38312i() {
        a aVar = this.f7035b;
        if (aVar != null) {
            aVar.getToken();
        } else if (!m38310k(m38314g())) {
        } else {
            synchronized (this) {
                if (!this.f7045l) {
                    m38311j(0L);
                }
            }
        }
    }

    /* renamed from: j */
    public void m38311j(long j) {
        synchronized (this) {
            m38319b(new r0(this, Math.min(Math.max(30L, j + j), f7030n)), j);
            this.f7045l = true;
        }
    }

    /* renamed from: k */
    public boolean m38310k(q0.a aVar) {
        if (aVar != null) {
            return (System.currentTimeMillis() > (aVar.c + q0.a.d) ? 1 : (System.currentTimeMillis() == (aVar.c + q0.a.d) ? 0 : -1)) > 0 || !this.f7044k.a().equals(aVar.b);
        }
        return true;
    }
}
