package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.p037os.C0864h;
import androidx.p023b.C0428a;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C11886c;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12099c;
import com.google.android.gms.common.util.C12112p;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15628f;
import com.google.firebase.components.C15635j;
import com.google.firebase.components.C15651u;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.p389b.AbstractC15608c;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p392e.C15731a;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.firebase.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/b.class */
public class C15601b {

    /* renamed from: d */
    private final Context f55975d;

    /* renamed from: e */
    private final String f55976e;

    /* renamed from: f */
    private final C15756h f55977f;

    /* renamed from: g */
    private final C15635j f55978g;

    /* renamed from: j */
    private final C15651u<C15731a> f55981j;

    /* renamed from: b */
    private static final Object f55973b = new Object();

    /* renamed from: c */
    private static final Executor f55974c = new ExecutorC15604b();

    /* renamed from: a */
    static final Map<String, C15601b> f55972a = new C0428a();

    /* renamed from: h */
    private final AtomicBoolean f55979h = new AtomicBoolean(false);

    /* renamed from: i */
    private final AtomicBoolean f55980i = new AtomicBoolean();

    /* renamed from: k */
    private final List<Object> f55982k = new CopyOnWriteArrayList();

    /* renamed from: l */
    private final List<Object> f55983l = new CopyOnWriteArrayList();

    /* renamed from: com.google.firebase.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$a.class */
    public static final class C15603a implements ComponentCallbacks2C11886c.AbstractC11887a {

        /* renamed from: a */
        private static AtomicReference<C15603a> f55984a = new AtomicReference<>();

        private C15603a() {
        }

        /* renamed from: a */
        static /* synthetic */ void m8566a(Context context) {
            if (context.getApplicationContext() instanceof Application) {
                Application application = (Application) context.getApplicationContext();
                if (f55984a.get() != null) {
                    return;
                }
                C15603a c15603a = new C15603a();
                if (!f55984a.compareAndSet(null, c15603a)) {
                    return;
                }
                ComponentCallbacks2C11886c.m19366a(application);
                ComponentCallbacks2C11886c.m19367a().m19365a(c15603a);
            }
        }

        @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C11886c.AbstractC11887a
        /* renamed from: a */
        public final void mo8565a(boolean z) {
            synchronized (C15601b.f55973b) {
                Iterator it2 = new ArrayList(C15601b.f55972a.values()).iterator();
                while (it2.hasNext()) {
                    C15601b c15601b = (C15601b) it2.next();
                    if (c15601b.f55979h.get()) {
                        C15601b.m8578a(c15601b, z);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.b$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$b.class */
    static final class ExecutorC15604b implements Executor {

        /* renamed from: a */
        private static final Handler f55985a = new Handler(Looper.getMainLooper());

        private ExecutorC15604b() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            f55985a.post(runnable);
        }
    }

    /* renamed from: com.google.firebase.b$c */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$c.class */
    public static final class C15605c extends BroadcastReceiver {

        /* renamed from: a */
        private static AtomicReference<C15605c> f55986a = new AtomicReference<>();

        /* renamed from: b */
        private final Context f55987b;

        public C15605c(Context context) {
            this.f55987b = context;
        }

        /* renamed from: a */
        static /* synthetic */ void m8564a(Context context) {
            if (f55986a.get() == null) {
                C15605c c15605c = new C15605c(context);
                if (!f55986a.compareAndSet(null, c15605c)) {
                    return;
                }
                context.registerReceiver(c15605c, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (C15601b.f55973b) {
                for (C15601b c15601b : C15601b.f55972a.values()) {
                    c15601b.m8567j();
                }
            }
            this.f55987b.unregisterReceiver(this);
        }
    }

    protected C15601b(Context context, String str, C15756h c15756h) {
        this.f55975d = (Context) C12045o.m19162a(context);
        this.f55976e = C12045o.m19160a(str);
        this.f55977f = (C15756h) C12045o.m19162a(c15756h);
        List<AbstractC15728b<AbstractC15634i>> m8541a = new C15628f(context, new C15628f.C15630a(ComponentDiscoveryService.class)).m8541a();
        C15635j.C15637a m8528a = C15635j.m8528a(f55974c);
        m8528a.f56039b.addAll(m8541a);
        m8528a.f56039b.add(new AbstractC15728b(new FirebaseCommonRegistrar()) { // from class: com.google.firebase.components.p

            /* renamed from: a */
            private final AbstractC15634i f56049a;

            {
                this.f56049a = firebaseCommonRegistrar;
            }

            @Override // com.google.firebase.p391d.AbstractC15728b
            /* renamed from: a */
            public final Object mo8476a() {
                return this.f56049a;
            }
        });
        C15635j.C15637a m8520a = m8528a.m8520a(C15622b.m8549a(context, Context.class, new Class[0])).m8520a(C15622b.m8549a(this, C15601b.class, new Class[0])).m8520a(C15622b.m8549a(c15756h, C15756h.class, new Class[0]));
        this.f55978g = new C15635j(m8520a.f56038a, m8520a.f56039b, m8520a.f56040c);
        this.f55981j = new C15651u<>(new AbstractC15728b(this, context) { // from class: com.google.firebase.c

            /* renamed from: a */
            private final C15601b f55990a;

            /* renamed from: b */
            private final Context f55991b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f55990a = this;
                this.f55991b = context;
            }

            @Override // com.google.firebase.p391d.AbstractC15728b
            /* renamed from: a */
            public final Object mo8476a() {
                return C15601b.m8579a(this.f55990a, this.f55991b);
            }
        });
    }

    /* renamed from: a */
    public static C15601b m8582a(Context context) {
        synchronized (f55973b) {
            if (f55972a.containsKey("[DEFAULT]")) {
                return m8573d();
            }
            C15756h m8452a = C15756h.m8452a(context);
            if (m8452a == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return m8581a(context, m8452a, "[DEFAULT]");
        }
    }

    /* renamed from: a */
    private static C15601b m8581a(Context context, C15756h c15756h, String str) {
        C15601b c15601b;
        C15603a.m8566a(context);
        String trim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f55973b) {
            Map<String, C15601b> map = f55972a;
            boolean z = !map.containsKey(trim);
            C12045o.m19157a(z, "FirebaseApp name " + trim + " already exists!");
            C12045o.m19161a(context, "Application context cannot be null.");
            c15601b = new C15601b(context, trim, c15756h);
            map.put(trim, c15601b);
        }
        c15601b.m8567j();
        return c15601b;
    }

    /* renamed from: a */
    public static /* synthetic */ C15731a m8579a(C15601b c15601b, Context context) {
        return new C15731a(context, c15601b.m8570g(), (AbstractC15608c) c15601b.f55978g.mo8532a(AbstractC15608c.class));
    }

    /* renamed from: a */
    static /* synthetic */ void m8578a(C15601b c15601b, boolean z) {
        Iterator<Object> it2 = c15601b.f55982k.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: d */
    public static C15601b m8573d() {
        C15601b c15601b;
        synchronized (f55973b) {
            c15601b = f55972a.get("[DEFAULT]");
            if (c15601b == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + C12112p.m19009a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return c15601b;
    }

    /* renamed from: i */
    private void m8568i() {
        C12045o.m19157a(!this.f55980i.get(), "FirebaseApp was deleted");
    }

    /* renamed from: j */
    public void m8567j() {
        if (!C0864h.m44288a(this.f55975d)) {
            new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ").append(m8576b());
            C15605c.m8564a(this.f55975d);
            return;
        }
        new StringBuilder("Device unlocked: initializing all Firebase APIs for app ").append(m8576b());
        this.f55978g.m8527a(m8571f());
    }

    /* renamed from: a */
    public final Context m8583a() {
        m8568i();
        return this.f55975d;
    }

    /* renamed from: a */
    public final <T> T m8577a(Class<T> cls) {
        m8568i();
        return (T) this.f55978g.mo8532a(cls);
    }

    /* renamed from: b */
    public final String m8576b() {
        m8568i();
        return this.f55976e;
    }

    /* renamed from: c */
    public final C15756h m8574c() {
        m8568i();
        return this.f55977f;
    }

    /* renamed from: e */
    public final boolean m8572e() {
        m8568i();
        return this.f55981j.mo8476a().m8473a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C15601b)) {
            return false;
        }
        return this.f55976e.equals(((C15601b) obj).m8576b());
    }

    /* renamed from: f */
    public final boolean m8571f() {
        return "[DEFAULT]".equals(m8576b());
    }

    /* renamed from: g */
    public final String m8570g() {
        return C12099c.m19044c(m8576b().getBytes(Charset.defaultCharset())) + "+" + C12099c.m19044c(m8574c().f56100b.getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.f55976e.hashCode();
    }

    public String toString() {
        return C12041m.m19169a(this).m19166a("name", this.f55976e).m19166a("options", this.f55977f).toString();
    }
}
