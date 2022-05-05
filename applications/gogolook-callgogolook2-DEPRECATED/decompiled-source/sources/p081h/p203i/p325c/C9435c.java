package p081h.p203i.p325c;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.p005os.UserManagerCompat;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.ComponentCallbacks2C6845b;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7071c;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p235d.p249s.C7084p;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9484f;
import p081h.p203i.p325c.p336m.C9493l;
import p081h.p203i.p325c.p336m.C9503s;
import p081h.p203i.p325c.p362r.AbstractC9856c;
import p081h.p203i.p325c.p371w.C9976a;
/* renamed from: h.i.c.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/c.class */
public class C9435c {

    /* renamed from: i */
    public static final Object f21535i = new Object();

    /* renamed from: j */
    public static final Executor f21536j = new ExecutorC9439d();
    @GuardedBy("LOCK")

    /* renamed from: k */
    public static final Map<String, C9435c> f21537k = new ArrayMap();

    /* renamed from: a */
    public final Context f21538a;

    /* renamed from: b */
    public final String f21539b;

    /* renamed from: c */
    public final C9446i f21540c;

    /* renamed from: d */
    public final C9493l f21541d;

    /* renamed from: g */
    public final C9503s<C9976a> f21544g;

    /* renamed from: e */
    public final AtomicBoolean f21542e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f21543f = new AtomicBoolean();

    /* renamed from: h */
    public final List<AbstractC9437b> f21545h = new CopyOnWriteArrayList();

    /* renamed from: h.i.c.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/c$b.class */
    public interface AbstractC9437b {
        /* renamed from: a */
        void m15162a(boolean z);
    }

    @TargetApi(14)
    /* renamed from: h.i.c.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/c$c.class */
    public static class C9438c implements ComponentCallbacks2C6845b.AbstractC6846a {

        /* renamed from: a */
        public static AtomicReference<C9438c> f21546a = new AtomicReference<>();

        /* renamed from: b */
        public static void m15159b(Context context) {
            if (C7083o.m21131a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f21546a.get() == null) {
                    C9438c cVar = new C9438c();
                    if (f21546a.compareAndSet(null, cVar)) {
                        ComponentCallbacks2C6845b.m21808a(application);
                        ComponentCallbacks2C6845b.m21805b().m21807a(cVar);
                    }
                }
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.ComponentCallbacks2C6845b.AbstractC6846a
        /* renamed from: a */
        public void mo15160a(boolean z) {
            synchronized (C9435c.f21535i) {
                Iterator it = new ArrayList(C9435c.f21537k.values()).iterator();
                while (it.hasNext()) {
                    C9435c cVar = (C9435c) it.next();
                    if (cVar.f21542e.get()) {
                        cVar.m15174a(z);
                    }
                }
            }
        }
    }

    /* renamed from: h.i.c.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/c$d.class */
    public static class ExecutorC9439d implements Executor {

        /* renamed from: a */
        public static final Handler f21547a = new Handler(Looper.getMainLooper());

        public ExecutorC9439d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            f21547a.post(runnable);
        }
    }

    @TargetApi(24)
    /* renamed from: h.i.c.c$e */
    /* loaded from: classes2-dex2jar.jar:h/i/c/c$e.class */
    public static class C9440e extends BroadcastReceiver {

        /* renamed from: b */
        public static AtomicReference<C9440e> f21548b = new AtomicReference<>();

        /* renamed from: a */
        public final Context f21549a;

        public C9440e(Context context) {
            this.f21549a = context;
        }

        /* renamed from: b */
        public static void m15156b(Context context) {
            if (f21548b.get() == null) {
                C9440e eVar = new C9440e(context);
                if (f21548b.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        /* renamed from: a */
        public void m15158a() {
            this.f21549a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (C9435c.f21535i) {
                for (C9435c cVar : C9435c.f21537k.values()) {
                    cVar.m15167f();
                }
            }
            m15158a();
        }
    }

    public C9435c(Context context, String str, C9446i iVar) {
        new CopyOnWriteArrayList();
        C7021t.m21290a(context);
        this.f21538a = context;
        C7021t.m21283b(str);
        this.f21539b = str;
        C7021t.m21290a(iVar);
        this.f21540c = iVar;
        List<AbstractC9489h> a = C9484f.m15076a(context, ComponentDiscoveryService.class).m15077a();
        a.add(new FirebaseCommonRegistrar());
        this.f21541d = new C9493l(f21536j, a, C9480d.m15095a(context, Context.class, new Class[0]), C9480d.m15095a(this, C9435c.class, new Class[0]), C9480d.m15095a(iVar, C9446i.class, new Class[0]));
        this.f21544g = new C9503s<>(C9394b.m15321a(this, context));
    }

    @NonNull
    /* renamed from: a */
    public static C9435c m15181a(@NonNull Context context, @NonNull C9446i iVar) {
        return m15180a(context, iVar, "[DEFAULT]");
    }

    @NonNull
    /* renamed from: a */
    public static C9435c m15180a(@NonNull Context context, @NonNull C9446i iVar, @NonNull String str) {
        C9435c cVar;
        C9438c.m15159b(context);
        String a = m15175a(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f21535i) {
            boolean z = !f21537k.containsKey(a);
            C7021t.m21281b(z, "FirebaseApp name " + a + " already exists!");
            C7021t.m21289a(context, "Application context cannot be null.");
            cVar = new C9435c(context, a, iVar);
            f21537k.put(a, cVar);
        }
        cVar.m15167f();
        return cVar;
    }

    /* renamed from: a */
    public static /* synthetic */ C9976a m15178a(C9435c cVar, Context context) {
        return new C9976a(context, cVar.m15168e(), (AbstractC9856c) cVar.f21541d.mo15033a(AbstractC9856c.class));
    }

    /* renamed from: a */
    public static String m15175a(@NonNull String str) {
        return str.trim();
    }

    @NonNull
    /* renamed from: a */
    public static List<C9435c> m15182a(@NonNull Context context) {
        ArrayList arrayList;
        synchronized (f21535i) {
            arrayList = new ArrayList(f21537k.values());
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: b */
    public static C9435c m15172b(@NonNull Context context) {
        synchronized (f21535i) {
            if (f21537k.containsKey("[DEFAULT]")) {
                return m15163j();
            }
            C9446i a = C9446i.m15150a(context);
            if (a == null) {
                return null;
            }
            return m15181a(context, a);
        }
    }

    @NonNull
    /* renamed from: j */
    public static C9435c m15163j() {
        C9435c cVar;
        synchronized (f21535i) {
            cVar = f21537k.get("[DEFAULT]");
            if (cVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + C7084p.m21120a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return cVar;
    }

    /* renamed from: a */
    public <T> T m15176a(Class<T> cls) {
        m15183a();
        return (T) this.f21541d.mo15033a(cls);
    }

    /* renamed from: a */
    public final void m15183a() {
        C7021t.m21281b(!this.f21543f.get(), "FirebaseApp was deleted");
    }

    /* renamed from: a */
    public final void m15174a(boolean z) {
        for (AbstractC9437b bVar : this.f21545h) {
            bVar.m15162a(z);
        }
    }

    @NonNull
    /* renamed from: b */
    public Context m15173b() {
        m15183a();
        return this.f21538a;
    }

    @NonNull
    /* renamed from: c */
    public String m15170c() {
        m15183a();
        return this.f21539b;
    }

    @NonNull
    /* renamed from: d */
    public C9446i m15169d() {
        m15183a();
        return this.f21540c;
    }

    /* renamed from: e */
    public String m15168e() {
        return C7071c.m21158c(m15170c().getBytes(Charset.defaultCharset())) + "+" + C7071c.m21158c(m15169d().m15149b().getBytes(Charset.defaultCharset()));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9435c)) {
            return false;
        }
        return this.f21539b.equals(((C9435c) obj).m15170c());
    }

    /* renamed from: f */
    public final void m15167f() {
        if (!UserManagerCompat.isUserUnlocked(this.f21538a)) {
            String str = "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + m15170c();
            C9440e.m15156b(this.f21538a);
            return;
        }
        String str2 = "Device unlocked: initializing all Firebase APIs for app " + m15170c();
        this.f21541d.m15065a(m15165h());
    }

    /* renamed from: g */
    public boolean m15166g() {
        m15183a();
        return this.f21544g.get().m13788a();
    }

    @VisibleForTesting
    /* renamed from: h */
    public boolean m15165h() {
        return "[DEFAULT]".equals(m15170c());
    }

    public int hashCode() {
        return this.f21539b.hashCode();
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("name", this.f21539b);
        a.m21295a("options", this.f21540c);
        return a.toString();
    }
}
