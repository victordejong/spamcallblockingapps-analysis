package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.os.h;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.p;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.f;
import com.google.firebase.components.i;
import com.google.firebase.components.j;
import com.google.firebase.components.u;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/b.class */
public class b {

    /* renamed from: d  reason: collision with root package name */
    private final Context f32213d;
    private final String e;
    private final h f;
    private final j g;
    private final u<com.google.firebase.e.a> j;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f32211b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final Executor f32212c = new ExecutorC0514b();

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, b> f32210a = new androidx.b.a();
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final AtomicBoolean i = new AtomicBoolean();
    private final List<Object> k = new CopyOnWriteArrayList();
    private final List<Object> l = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$a.class */
    public static final class a implements c.a {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<a> f32216a = new AtomicReference<>();

        private a() {
        }

        static /* synthetic */ void a(Context context) {
            if (context.getApplicationContext() instanceof Application) {
                Application application = (Application) context.getApplicationContext();
                if (f32216a.get() == null) {
                    a aVar = new a();
                    if (f32216a.compareAndSet(null, aVar)) {
                        com.google.android.gms.common.api.internal.c.a(application);
                        com.google.android.gms.common.api.internal.c.a().a(aVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.c.a
        public final void a(boolean z) {
            synchronized (b.f32211b) {
                Iterator it2 = new ArrayList(b.f32210a.values()).iterator();
                while (it2.hasNext()) {
                    b bVar = (b) it2.next();
                    if (bVar.h.get()) {
                        b.a(bVar, z);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.b$b  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$b.class */
    static final class ExecutorC0514b implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private static final Handler f32217a = new Handler(Looper.getMainLooper());

        private ExecutorC0514b() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            f32217a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/b$c.class */
    public static final class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<c> f32218a = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        private final Context f32219b;

        public c(Context context) {
            this.f32219b = context;
        }

        static /* synthetic */ void a(Context context) {
            if (f32218a.get() == null) {
                c cVar = new c(context);
                if (f32218a.compareAndSet(null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (b.f32211b) {
                for (b bVar : b.f32210a.values()) {
                    bVar.j();
                }
            }
            this.f32219b.unregisterReceiver(this);
        }
    }

    protected b(final Context context, String str, h hVar) {
        this.f32213d = (Context) o.a(context);
        this.e = o.a(str);
        this.f = (h) o.a(hVar);
        List<com.google.firebase.d.b<i>> a2 = new f(context, new f.a(ComponentDiscoveryService.class)).a();
        j.a a3 = j.a(f32212c);
        a3.f32259b.addAll(a2);
        final FirebaseCommonRegistrar firebaseCommonRegistrar = new FirebaseCommonRegistrar();
        a3.f32259b.add(new com.google.firebase.d.b(firebaseCommonRegistrar) { // from class: com.google.firebase.components.p

            /* renamed from: a  reason: collision with root package name */
            private final i f32269a;

            {
                this.f32269a = firebaseCommonRegistrar;
            }

            @Override // com.google.firebase.d.b
            public final Object a() {
                return this.f32269a;
            }
        });
        j.a a4 = a3.a(com.google.firebase.components.b.a(context, Context.class, new Class[0])).a(com.google.firebase.components.b.a(this, b.class, new Class[0])).a(com.google.firebase.components.b.a(hVar, h.class, new Class[0]));
        this.g = new j(a4.f32258a, a4.f32259b, a4.f32260c);
        this.j = new u<>(new com.google.firebase.d.b(this, context) { // from class: com.google.firebase.c

            /* renamed from: a  reason: collision with root package name */
            private final b f32220a;

            /* renamed from: b  reason: collision with root package name */
            private final Context f32221b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32220a = this;
                this.f32221b = context;
            }

            @Override // com.google.firebase.d.b
            public final Object a() {
                return b.a(this.f32220a, this.f32221b);
            }
        });
    }

    public static b a(Context context) {
        synchronized (f32211b) {
            if (f32210a.containsKey("[DEFAULT]")) {
                return d();
            }
            h a2 = h.a(context);
            if (a2 == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return a(context, a2, "[DEFAULT]");
        }
    }

    private static b a(Context context, h hVar, String str) {
        b bVar;
        a.a(context);
        String trim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f32211b) {
            Map<String, b> map = f32210a;
            boolean z = !map.containsKey(trim);
            o.a(z, "FirebaseApp name " + trim + " already exists!");
            o.a(context, "Application context cannot be null.");
            bVar = new b(context, trim, hVar);
            map.put(trim, bVar);
        }
        bVar.j();
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.firebase.e.a a(b bVar, Context context) {
        return new com.google.firebase.e.a(context, bVar.g(), (com.google.firebase.b.c) bVar.g.a(com.google.firebase.b.c.class));
    }

    static /* synthetic */ void a(b bVar, boolean z) {
        Iterator<Object> it2 = bVar.k.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    public static b d() {
        b bVar;
        synchronized (f32211b) {
            bVar = f32210a.get("[DEFAULT]");
            if (bVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + p.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return bVar;
    }

    private void i() {
        o.a(!this.i.get(), "FirebaseApp was deleted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (!h.a(this.f32213d)) {
            new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ").append(b());
            c.a(this.f32213d);
            return;
        }
        new StringBuilder("Device unlocked: initializing all Firebase APIs for app ").append(b());
        this.g.a(f());
    }

    public final Context a() {
        i();
        return this.f32213d;
    }

    public final <T> T a(Class<T> cls) {
        i();
        return (T) this.g.a(cls);
    }

    public final String b() {
        i();
        return this.e;
    }

    public final h c() {
        i();
        return this.f;
    }

    public final boolean e() {
        i();
        return this.j.a().a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.e.equals(((b) obj).b());
    }

    public final boolean f() {
        return "[DEFAULT]".equals(b());
    }

    public final String g() {
        return com.google.android.gms.common.util.c.c(b().getBytes(Charset.defaultCharset())) + "+" + com.google.android.gms.common.util.c.c(c().f32315b.getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    public String toString() {
        return m.a(this).a("name", this.e).a("options", this.f).toString();
    }
}
