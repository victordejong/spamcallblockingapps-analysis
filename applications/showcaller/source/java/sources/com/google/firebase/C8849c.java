package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.p008os.C0633j;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C6015c;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6225c;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.common.util.C6239q;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8863g;
import com.google.firebase.components.C8873n;
import com.google.firebase.components.C8884t;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.p312j.AbstractC9244c;
import com.google.firebase.p314l.C9248a;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p020b.p036e.C1489a;
/* renamed from: com.google.firebase.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/c.class */
public class C8849c {

    /* renamed from: a */
    private static final Object f38779a = new Object();

    /* renamed from: b */
    private static final Executor f38780b = new ExecutorC8853d();

    /* renamed from: c */
    static final Map<String, C8849c> f38781c = new C1489a();

    /* renamed from: d */
    private final Context f38782d;

    /* renamed from: e */
    private final String f38783e;

    /* renamed from: f */
    private final C9168h f38784f;

    /* renamed from: g */
    private final C8873n f38785g;

    /* renamed from: j */
    private final C8884t<C9248a> f38788j;

    /* renamed from: h */
    private final AtomicBoolean f38786h = new AtomicBoolean(false);

    /* renamed from: i */
    private final AtomicBoolean f38787i = new AtomicBoolean();

    /* renamed from: k */
    private final List<AbstractC8851b> f38789k = new CopyOnWriteArrayList();

    /* renamed from: l */
    private final List<?> f38790l = new CopyOnWriteArrayList();

    /* renamed from: com.google.firebase.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/c$b.class */
    public interface AbstractC8851b {
        /* renamed from: a */
        void m2519a(boolean z);
    }

    @TargetApi(14)
    /* renamed from: com.google.firebase.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/c$c.class */
    public static class C8852c implements ComponentCallbacks2C6015c.AbstractC6016a {

        /* renamed from: a */
        private static AtomicReference<C8852c> f38791a = new AtomicReference<>();

        private C8852c() {
        }

        /* renamed from: c */
        public static void m2516c(Context context) {
            if (!C6237o.m16783a() || !(context.getApplicationContext() instanceof Application)) {
                return;
            }
            Application application = (Application) context.getApplicationContext();
            if (f38791a.get() != null) {
                return;
            }
            C8852c c8852c = new C8852c();
            if (!f38791a.compareAndSet(null, c8852c)) {
                return;
            }
            ComponentCallbacks2C6015c.m17431c(application);
            ComponentCallbacks2C6015c.m17432b().m17433a(c8852c);
        }

        @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C6015c.AbstractC6016a
        /* renamed from: a */
        public void mo2518a(boolean z) {
            synchronized (C8849c.f38779a) {
                Iterator it = new ArrayList(C8849c.f38781c.values()).iterator();
                while (it.hasNext()) {
                    C8849c c8849c = (C8849c) it.next();
                    if (c8849c.f38786h.get()) {
                        c8849c.m2520t(z);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.c$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/c$d.class */
    private static class ExecutorC8853d implements Executor {

        /* renamed from: d */
        private static final Handler f38792d = new Handler(Looper.getMainLooper());

        private ExecutorC8853d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            f38792d.post(runnable);
        }
    }

    @TargetApi(24)
    /* renamed from: com.google.firebase.c$e */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/c$e.class */
    public static class C8854e extends BroadcastReceiver {

        /* renamed from: a */
        private static AtomicReference<C8854e> f38793a = new AtomicReference<>();

        /* renamed from: b */
        private final Context f38794b;

        public C8854e(Context context) {
            this.f38794b = context;
        }

        /* renamed from: b */
        public static void m2514b(Context context) {
            if (f38793a.get() == null) {
                C8854e c8854e = new C8854e(context);
                if (!f38793a.compareAndSet(null, c8854e)) {
                    return;
                }
                context.registerReceiver(c8854e, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }

        /* renamed from: c */
        public void m2513c() {
            this.f38794b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (C8849c.f38779a) {
                for (C8849c c8849c : C8849c.f38781c.values()) {
                    c8849c.m2528l();
                }
            }
            m2513c();
        }
    }

    protected C8849c(Context context, String str, C9168h c9168h) {
        this.f38782d = (Context) C6155o.m17018j(context);
        this.f38783e = C6155o.m17022f(str);
        this.f38784f = (C9168h) C6155o.m17018j(c9168h);
        this.f38785g = C8873n.m2475e(f38780b).m2461c(C8863g.m2485b(context, ComponentDiscoveryService.class).m2486a()).m2462b(new FirebaseCommonRegistrar()).m2463a(C8858d.m2497n(context, Context.class, new Class[0])).m2463a(C8858d.m2497n(this, C8849c.class, new Class[0])).m2463a(C8858d.m2497n(c9168h, C9168h.class, new Class[0])).m2460d();
        this.f38788j = new C8884t<>(C8848b.m2540a(this, context));
    }

    /* renamed from: e */
    private void m2535e() {
        C6155o.m17014n(!this.f38787i.get(), "FirebaseApp was deleted");
    }

    /* renamed from: h */
    public static C8849c m2532h() {
        C8849c c8849c;
        synchronized (f38779a) {
            c8849c = f38781c.get("[DEFAULT]");
            if (c8849c == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + C6239q.m16770a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return c8849c;
    }

    /* renamed from: l */
    public void m2528l() {
        if (!C0633j.m33184a(this.f38782d)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + m2531i());
            C8854e.m2514b(this.f38782d);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + m2531i());
        this.f38785g.m2472h(m2523q());
    }

    /* renamed from: m */
    public static C8849c m2527m(Context context) {
        synchronized (f38779a) {
            if (f38781c.containsKey("[DEFAULT]")) {
                return m2532h();
            }
            C9168h m1662a = C9168h.m1662a(context);
            if (m1662a == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return m2526n(context, m1662a);
        }
    }

    /* renamed from: n */
    public static C8849c m2526n(Context context, C9168h c9168h) {
        return m2525o(context, c9168h, "[DEFAULT]");
    }

    /* renamed from: o */
    public static C8849c m2525o(Context context, C9168h c9168h, String str) {
        C8849c c8849c;
        C8852c.m2516c(context);
        String m2521s = m2521s(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f38779a) {
            Map<String, C8849c> map = f38781c;
            boolean z = !map.containsKey(m2521s);
            C6155o.m17014n(z, "FirebaseApp name " + m2521s + " already exists!");
            C6155o.m17017k(context, "Application context cannot be null.");
            c8849c = new C8849c(context, m2521s, c9168h);
            map.put(m2521s, c8849c);
        }
        c8849c.m2528l();
        return c8849c;
    }

    /* renamed from: r */
    public static /* synthetic */ C9248a m2522r(C8849c c8849c, Context context) {
        return new C9248a(context, c8849c.m2529k(), (AbstractC9244c) c8849c.f38785g.mo2417a(AbstractC9244c.class));
    }

    /* renamed from: s */
    private static String m2521s(String str) {
        return str.trim();
    }

    /* renamed from: t */
    public void m2520t(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (AbstractC8851b abstractC8851b : this.f38789k) {
            abstractC8851b.m2519a(z);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C8849c)) {
            return false;
        }
        return this.f38783e.equals(((C8849c) obj).m2531i());
    }

    /* renamed from: f */
    public <T> T m2534f(Class<T> cls) {
        m2535e();
        return (T) this.f38785g.mo2417a(cls);
    }

    /* renamed from: g */
    public Context m2533g() {
        m2535e();
        return this.f38782d;
    }

    public int hashCode() {
        return this.f38783e.hashCode();
    }

    /* renamed from: i */
    public String m2531i() {
        m2535e();
        return this.f38783e;
    }

    /* renamed from: j */
    public C9168h m2530j() {
        m2535e();
        return this.f38784f;
    }

    /* renamed from: k */
    public String m2529k() {
        return C6225c.m16819c(m2531i().getBytes(Charset.defaultCharset())) + "+" + C6225c.m16819c(m2530j().m1660c().getBytes(Charset.defaultCharset()));
    }

    /* renamed from: p */
    public boolean m2524p() {
        m2535e();
        return this.f38788j.get().m1414b();
    }

    /* renamed from: q */
    public boolean m2523q() {
        return "[DEFAULT]".equals(m2531i());
    }

    public String toString() {
        return C6147m.m17042c(this).m17041a(ShortCut.NAME, this.f38783e).m17041a("options", this.f38784f).toString();
    }
}
