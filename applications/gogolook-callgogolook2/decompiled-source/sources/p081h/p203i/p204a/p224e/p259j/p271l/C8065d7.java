package p081h.p203i.p204a.p224e.p259j.p271l;

import android.app.Application;
import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.WorkerThread;
import androidx.work.PeriodicWorkRequest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.ComponentCallbacks2C6845b;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p373y.p374a.C10009a;
/* renamed from: h.i.a.e.j.l.d7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d7.class */
public final class C8065d7 {

    /* renamed from: f */
    public static final C6999k f18787f = new C6999k("ModelResourceManager", "");

    /* renamed from: g */
    public static final C9480d<?> f18788g;

    /* renamed from: a */
    public final C8299p6 f18789a = C8299p6.m18209c();

    /* renamed from: b */
    public final AtomicLong f18790b = new AtomicLong(PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
    @GuardedBy("this")

    /* renamed from: c */
    public final Set<AbstractC8026b7> f18791c = new HashSet();

    /* renamed from: d */
    public final Set<AbstractC8026b7> f18792d = new HashSet();

    /* renamed from: e */
    public final ConcurrentHashMap<AbstractC8026b7, CallableC8066a> f18793e = new ConcurrentHashMap<>();

    /* renamed from: h.i.a.e.j.l.d7$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d7$a.class */
    public final class CallableC8066a implements Callable<Void> {

        /* renamed from: a */
        public final AbstractC8026b7 f18794a;

        /* renamed from: b */
        public final String f18795b;

        public CallableC8066a(AbstractC8026b7 b7Var, String str) {
            this.f18794a = b7Var;
            this.f18795b = str;
        }

        /* renamed from: a */
        public final Void call() {
            char c;
            String str = this.f18795b;
            int hashCode = str.hashCode();
            if (hashCode != 97847535) {
                if (hashCode == 710591710 && str.equals("OPERATION_LOAD")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (str.equals("OPERATION_RELEASE")) {
                    c = 1;
                }
                c = 65535;
            }
            if (c == 0) {
                try {
                    C8065d7.this.m18622c(this.f18794a);
                    return null;
                } catch (C10009a e) {
                    C8065d7.f18787f.m21338a("ModelResourceManager", "Error preloading model resource", e);
                    return null;
                }
            } else if (c != 1) {
                return null;
            } else {
                AbstractC8026b7 b7Var = this.f18794a;
                C8065d7.f18787f.m21334d("ModelResourceManager", "Releasing modelResource");
                b7Var.release();
                C8065d7.this.f18792d.remove(b7Var);
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof CallableC8066a)) {
                return false;
            }
            CallableC8066a aVar = (CallableC8066a) obj;
            return C7018s.m21297a(this.f18794a, aVar.f18794a) && C7018s.m21297a(this.f18795b, aVar.f18795b);
        }

        public final int hashCode() {
            return C7018s.m21296a(this.f18794a, this.f18795b);
        }
    }

    static {
        C9480d.C9482b a = C9480d.m15099a(C8065d7.class);
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15083a(C8085e7.f18816a);
        f18788g = a.m15080b();
    }

    public C8065d7(Context context) {
        if (context instanceof Application) {
            ComponentCallbacks2C6845b.m21808a((Application) context);
        } else {
            f18787f.m21337b("ModelResourceManager", "No valid Application available and auto-manage cannot work");
        }
        ComponentCallbacks2C6845b.m21805b().m21807a(new ComponentCallbacks2C6845b.AbstractC6846a(this) { // from class: h.i.a.e.j.l.c7

            /* renamed from: a */
            public final C8065d7 f18779a;

            {
                this.f18779a = this;
            }

            @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.ComponentCallbacks2C6845b.AbstractC6846a
            /* renamed from: a */
            public final void mo15160a(boolean z) {
                this.f18779a.m18625a(z);
            }
        });
        if (ComponentCallbacks2C6845b.m21805b().m21804b(true)) {
            this.f18790b.set(2000L);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ C8065d7 m18626a(AbstractC9483e eVar) {
        return new C8065d7((Context) eVar.mo15033a(Context.class));
    }

    /* renamed from: a */
    public final void m18629a() {
        synchronized (this) {
            for (AbstractC8026b7 b7Var : this.f18791c) {
                m18628a(b7Var);
            }
        }
    }

    @GuardedBy("this")
    /* renamed from: a */
    public final void m18628a(AbstractC8026b7 b7Var) {
        CallableC8066a b = m18623b(b7Var);
        this.f18789a.m18210b(b);
        long j = this.f18790b.get();
        C6999k kVar = f18787f;
        StringBuilder sb = new StringBuilder(62);
        sb.append("Rescheduling modelResource release after: ");
        sb.append(j);
        kVar.m21334d("ModelResourceManager", sb.toString());
        this.f18789a.m18213a(b, j);
    }

    /* renamed from: a */
    public final /* synthetic */ void m18625a(boolean z) {
        C6999k kVar = f18787f;
        StringBuilder sb = new StringBuilder(34);
        sb.append("Background state changed to: ");
        sb.append(z);
        kVar.m21334d("ModelResourceManager", sb.toString());
        this.f18790b.set(z ? 2000L : PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        m18629a();
    }

    /* renamed from: b */
    public final CallableC8066a m18623b(AbstractC8026b7 b7Var) {
        this.f18793e.putIfAbsent(b7Var, new CallableC8066a(b7Var, "OPERATION_RELEASE"));
        return this.f18793e.get(b7Var);
    }

    @WorkerThread
    /* renamed from: c */
    public final void m18622c(AbstractC8026b7 b7Var) throws C10009a {
        if (!this.f18792d.contains(b7Var)) {
            try {
                b7Var.m18677a();
                this.f18792d.add(b7Var);
            } catch (RuntimeException e) {
                throw new C10009a("The load task failed", 13, e);
            }
        }
    }
}
