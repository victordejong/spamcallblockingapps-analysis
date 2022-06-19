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
import androidx.core.p028os.C0613b;
import androidx.p013b.C0373a;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C2543c;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.C2706c;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.common.util.C2718o;
import com.google.firebase.components.AbstractC4890h;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4885f;
import com.google.firebase.components.C4891i;
import com.google.firebase.components.C4902q;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.p161a.AbstractC4856c;
import com.google.firebase.p162b.C4871a;
import com.google.firebase.p164d.C4907a;
import com.google.firebase.p165e.C4929b;
import com.google.firebase.p165e.C4932e;
import com.google.firebase.p165e.C4934g;
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
/* renamed from: com.google.firebase.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/b.class */
public class C4865b {

    /* renamed from: d */
    private final Context f20940d;

    /* renamed from: e */
    private final String f20941e;

    /* renamed from: f */
    private final C4906d f20942f;

    /* renamed from: g */
    private final C4891i f20943g;

    /* renamed from: j */
    private final C4902q<C4907a> f20946j;

    /* renamed from: b */
    private static final Object f20938b = new Object();

    /* renamed from: c */
    private static final Executor f20939c = new ExecutorC4869c();
    @GuardedBy("LOCK")

    /* renamed from: a */
    static final Map<String, C4865b> f20937a = new C0373a();

    /* renamed from: h */
    private final AtomicBoolean f20944h = new AtomicBoolean(false);

    /* renamed from: i */
    private final AtomicBoolean f20945i = new AtomicBoolean();

    /* renamed from: k */
    private final List<AbstractC4867a> f20947k = new CopyOnWriteArrayList();

    /* renamed from: l */
    private final List<Object> f20948l = new CopyOnWriteArrayList();

    /* renamed from: com.google.firebase.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/b$a.class */
    public interface AbstractC4867a {
        /* renamed from: a */
        void m2138a(boolean z);
    }

    @TargetApi(14)
    /* renamed from: com.google.firebase.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/b$b.class */
    public static class C4868b implements ComponentCallbacks2C2543c.AbstractC2544a {

        /* renamed from: a */
        private static AtomicReference<C4868b> f20949a = new AtomicReference<>();

        private C4868b() {
        }

        /* renamed from: b */
        public static void m2134b(Context context) {
            if (!C2716m.m13842a() || !(context.getApplicationContext() instanceof Application)) {
                return;
            }
            Application application = (Application) context.getApplicationContext();
            if (f20949a.get() != null) {
                return;
            }
            C4868b c4868b = new C4868b();
            if (!f20949a.compareAndSet(null, c4868b)) {
                return;
            }
            ComponentCallbacks2C2543c.m14330a(application);
            ComponentCallbacks2C2543c.m14331a().m14329a(c4868b);
        }

        @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C2543c.AbstractC2544a
        /* renamed from: a */
        public void mo2135a(boolean z) {
            synchronized (C4865b.f20938b) {
                Iterator it = new ArrayList(C4865b.f20937a.values()).iterator();
                while (it.hasNext()) {
                    C4865b c4865b = (C4865b) it.next();
                    if (c4865b.f20944h.get()) {
                        c4865b.m2151a(z);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/b$c.class */
    private static class ExecutorC4869c implements Executor {

        /* renamed from: a */
        private static final Handler f20950a = new Handler(Looper.getMainLooper());

        private ExecutorC4869c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            f20950a.post(runnable);
        }
    }

    @TargetApi(24)
    /* renamed from: com.google.firebase.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/b$d.class */
    public static class C4870d extends BroadcastReceiver {

        /* renamed from: a */
        private static AtomicReference<C4870d> f20951a = new AtomicReference<>();

        /* renamed from: b */
        private final Context f20952b;

        public C4870d(Context context) {
            this.f20952b = context;
        }

        /* renamed from: b */
        public static void m2126b(Context context) {
            if (f20951a.get() == null) {
                C4870d c4870d = new C4870d(context);
                if (!f20951a.compareAndSet(null, c4870d)) {
                    return;
                }
                context.registerReceiver(c4870d, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }

        /* renamed from: a */
        public void m2131a() {
            this.f20952b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (C4865b.f20938b) {
                for (C4865b c4865b : C4865b.f20937a.values()) {
                    c4865b.m2141j();
                }
            }
            m2131a();
        }
    }

    protected C4865b(Context context, String str, C4906d c4906d) {
        this.f20940d = (Context) C2662s.m13981a(context);
        this.f20941e = C2662s.m13979a(str);
        this.f20942f = (C4906d) C2662s.m13981a(c4906d);
        List<AbstractC4890h> m2099a = C4885f.m2098a(context, ComponentDiscoveryService.class).m2099a();
        String m2014a = C4932e.m2014a();
        this.f20943g = new C4891i(f20939c, m2099a, C4879b.m2119a(context, Context.class, new Class[0]), C4879b.m2119a(this, C4865b.class, new Class[0]), C4879b.m2119a(c4906d, C4906d.class, new Class[0]), C4934g.m2010a("fire-android", ""), C4934g.m2010a("fire-core", "19.3.0"), m2014a != null ? C4934g.m2010a("kotlin", m2014a) : null, C4929b.m2018b(), C4871a.m2140a());
        this.f20946j = new C4902q<>(C4876c.m2125a(this, context));
    }

    /* renamed from: a */
    public static C4865b m2159a(Context context) {
        C4865b m2158a;
        synchronized (f20938b) {
            if (f20937a.containsKey("[DEFAULT]")) {
                m2158a = m2147d();
            } else {
                C4906d m2049a = C4906d.m2049a(context);
                if (m2049a == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    m2158a = null;
                } else {
                    m2158a = m2158a(context, m2049a);
                }
            }
        }
        return m2158a;
    }

    /* renamed from: a */
    public static C4865b m2158a(Context context, C4906d c4906d) {
        return m2157a(context, c4906d, "[DEFAULT]");
    }

    /* renamed from: a */
    public static C4865b m2157a(Context context, C4906d c4906d, String str) {
        C4865b c4865b;
        C4868b.m2134b(context);
        String m2152a = m2152a(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f20938b) {
            C2662s.m13976a(!f20937a.containsKey(m2152a), "FirebaseApp name " + m2152a + " already exists!");
            C2662s.m13980a(context, "Application context cannot be null.");
            c4865b = new C4865b(context, m2152a, c4906d);
            f20937a.put(m2152a, c4865b);
        }
        c4865b.m2141j();
        return c4865b;
    }

    /* renamed from: a */
    public static /* synthetic */ C4907a m2155a(C4865b c4865b, Context context) {
        return new C4907a(context, c4865b.m2144g(), (AbstractC4856c) c4865b.f20943g.mo2054a(AbstractC4856c.class));
    }

    /* renamed from: a */
    private static String m2152a(String str) {
        return str.trim();
    }

    /* renamed from: a */
    public void m2151a(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (AbstractC4867a abstractC4867a : this.f20947k) {
            abstractC4867a.m2138a(z);
        }
    }

    /* renamed from: d */
    public static C4865b m2147d() {
        C4865b c4865b;
        synchronized (f20938b) {
            c4865b = f20937a.get("[DEFAULT]");
            if (c4865b == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + C2718o.m13830a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return c4865b;
    }

    /* renamed from: i */
    private void m2142i() {
        C2662s.m13976a(!this.f20945i.get(), "FirebaseApp was deleted");
    }

    /* renamed from: j */
    public void m2141j() {
        if (!C0613b.m20240a(this.f20940d)) {
            C4870d.m2126b(this.f20940d);
        } else {
            this.f20943g.m2090a(m2145f());
        }
    }

    /* renamed from: a */
    public Context m2160a() {
        m2142i();
        return this.f20940d;
    }

    /* renamed from: a */
    public <T> T m2153a(Class<T> cls) {
        m2142i();
        return (T) this.f20943g.mo2054a(cls);
    }

    /* renamed from: b */
    public String m2150b() {
        m2142i();
        return this.f20941e;
    }

    /* renamed from: c */
    public C4906d m2148c() {
        m2142i();
        return this.f20942f;
    }

    /* renamed from: e */
    public boolean m2146e() {
        m2142i();
        return this.f20946j.mo2059a().m2045a();
    }

    public boolean equals(Object obj) {
        return !(obj instanceof C4865b) ? false : this.f20941e.equals(((C4865b) obj).m2150b());
    }

    /* renamed from: f */
    public boolean m2145f() {
        return "[DEFAULT]".equals(m2150b());
    }

    /* renamed from: g */
    public String m2144g() {
        return C2706c.m13876b(m2150b().getBytes(Charset.defaultCharset())) + "+" + C2706c.m13876b(m2148c().m2048b().getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.f20941e.hashCode();
    }

    public String toString() {
        return C2657q.m13993a(this).m13990a("name", this.f20941e).m13990a("options", this.f20942f).toString();
    }
}
