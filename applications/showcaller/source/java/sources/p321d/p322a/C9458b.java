package p321d.p322a;

import com.allinone.callerid.bean.ShortCut;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: d.a.b */
/* loaded from: classes2-dex2jar.jar:d/a/b.class */
public class C9458b {

    /* renamed from: d */
    static final Logger f40315d = Logger.getLogger(C9458b.class.getName());

    /* renamed from: e */
    private static final C9466c<C9462d<?>, Object> f40316e;

    /* renamed from: f */
    public static final C9458b f40317f;

    /* renamed from: g */
    private ArrayList<RunnableC9461c> f40318g;

    /* renamed from: h */
    private AbstractC9460b f40319h = new C9464f(this, null);

    /* renamed from: i */
    final C9459a f40320i;

    /* renamed from: j */
    final C9466c<C9462d<?>, Object> f40321j;

    /* renamed from: k */
    final int f40322k;

    /* renamed from: d.a.b$a */
    /* loaded from: classes2-dex2jar.jar:d/a/b$a.class */
    public static final class C9459a extends C9458b implements Closeable {

        /* renamed from: l */
        private final C9458b f40323l;

        /* renamed from: m */
        private boolean f40324m;

        /* renamed from: n */
        private Throwable f40325n;

        /* renamed from: o */
        private ScheduledFuture<?> f40326o;

        /* renamed from: L */
        public boolean m539L(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (!this.f40324m) {
                    this.f40324m = true;
                    ScheduledFuture<?> scheduledFuture = this.f40326o;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.f40326o = null;
                    }
                    this.f40325n = th;
                } else {
                    z = false;
                }
            }
            if (z) {
                m549A();
            }
            return z;
        }

        @Override // p321d.p322a.C9458b
        /* renamed from: a */
        public C9458b mo538a() {
            return this.f40323l.mo538a();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            m539L(null);
        }

        @Override // p321d.p322a.C9458b
        /* renamed from: e */
        boolean mo537e() {
            return true;
        }

        @Override // p321d.p322a.C9458b
        /* renamed from: g */
        public Throwable mo536g() {
            if (mo534u()) {
                return this.f40325n;
            }
            return null;
        }

        @Override // p321d.p322a.C9458b
        /* renamed from: q */
        public void mo535q(C9458b c9458b) {
            this.f40323l.mo535q(c9458b);
        }

        @Override // p321d.p322a.C9458b
        /* renamed from: u */
        public boolean mo534u() {
            synchronized (this) {
                if (this.f40324m) {
                    return true;
                }
                if (!C9458b.super.mo534u()) {
                    return false;
                }
                m539L(C9458b.super.mo536g());
                return true;
            }
        }
    }

    /* renamed from: d.a.b$b */
    /* loaded from: classes2-dex2jar.jar:d/a/b$b.class */
    public interface AbstractC9460b {
        /* renamed from: a */
        void mo530a(C9458b c9458b);
    }

    /* renamed from: d.a.b$c */
    /* loaded from: classes2-dex2jar.jar:d/a/b$c.class */
    public final class RunnableC9461c implements Runnable {

        /* renamed from: d */
        private final Executor f40327d;

        /* renamed from: e */
        final AbstractC9460b f40328e;

        /* renamed from: f */
        final /* synthetic */ C9458b f40329f;

        /* renamed from: a */
        void m533a() {
            try {
                this.f40327d.execute(this);
            } catch (Throwable th) {
                C9458b.f40315d.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f40328e.mo530a(this.f40329f);
        }
    }

    /* renamed from: d.a.b$d */
    /* loaded from: classes2-dex2jar.jar:d/a/b$d.class */
    public static final class C9462d<T> {

        /* renamed from: a */
        private final String f40330a;

        /* renamed from: b */
        private final T f40331b;

        C9462d(String str) {
            this(str, null);
        }

        C9462d(String str, T t) {
            this.f40330a = (String) C9458b.m543k(str, ShortCut.NAME);
            this.f40331b = t;
        }

        /* renamed from: a */
        public T m532a(C9458b c9458b) {
            Object m540z = c9458b.m540z(this);
            T t = m540z;
            if (m540z == null) {
                t = this.f40331b;
            }
            return (T) t;
        }

        public String toString() {
            return this.f40330a;
        }
    }

    /* renamed from: d.a.b$e */
    /* loaded from: classes2-dex2jar.jar:d/a/b$e.class */
    public static final class C9463e {

        /* renamed from: a */
        static final AbstractC9465g f40332a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f40332a = m531a(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                C9458b.f40315d.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        /* renamed from: a */
        private static AbstractC9465g m531a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (AbstractC9465g) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(AbstractC9465g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new C9471d();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    /* renamed from: d.a.b$f */
    /* loaded from: classes2-dex2jar.jar:d/a/b$f.class */
    public final class C9464f implements AbstractC9460b {
        private C9464f() {
            C9458b.this = r4;
        }

        /* synthetic */ C9464f(C9458b c9458b, RunnableC9457a runnableC9457a) {
            this();
        }

        @Override // p321d.p322a.C9458b.AbstractC9460b
        /* renamed from: a */
        public void mo530a(C9458b c9458b) {
            C9458b c9458b2 = C9458b.this;
            if (c9458b2 instanceof C9459a) {
                ((C9459a) c9458b2).m539L(c9458b.mo536g());
            } else {
                c9458b2.m549A();
            }
        }
    }

    /* renamed from: d.a.b$g */
    /* loaded from: classes2-dex2jar.jar:d/a/b$g.class */
    public static abstract class AbstractC9465g {
        @Deprecated
        /* renamed from: a */
        public void m529a(C9458b c9458b) {
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        /* renamed from: b */
        public abstract C9458b mo519b();

        /* renamed from: c */
        public abstract void mo518c(C9458b c9458b, C9458b c9458b2);

        /* renamed from: d */
        public C9458b mo517d(C9458b c9458b) {
            C9458b mo519b = mo519b();
            m529a(c9458b);
            return mo519b;
        }
    }

    static {
        C9466c<C9462d<?>, Object> c9466c = new C9466c<>();
        f40316e = c9466c;
        f40317f = new C9458b(null, c9466c);
    }

    private C9458b(C9458b c9458b, C9466c<C9462d<?>, Object> c9466c) {
        this.f40320i = m544f(c9458b);
        this.f40321j = c9466c;
        int i = c9458b == null ? 0 : c9458b.f40322k + 1;
        this.f40322k = i;
        m546E(i);
    }

    /* renamed from: D */
    static AbstractC9465g m547D() {
        return C9463e.f40332a;
    }

    /* renamed from: E */
    private static void m546E(int i) {
        if (i == 1000) {
            f40315d.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    /* renamed from: f */
    static C9459a m544f(C9458b c9458b) {
        if (c9458b == null) {
            return null;
        }
        return c9458b instanceof C9459a ? (C9459a) c9458b : c9458b.f40320i;
    }

    /* renamed from: k */
    static <T> T m543k(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: p */
    public static C9458b m542p() {
        C9458b mo519b = m547D().mo519b();
        C9458b c9458b = mo519b;
        if (mo519b == null) {
            c9458b = f40317f;
        }
        return c9458b;
    }

    /* renamed from: y */
    public static <T> C9462d<T> m541y(String str) {
        return new C9462d<>(str);
    }

    /* renamed from: A */
    void m549A() {
        int i;
        if (!mo537e()) {
            return;
        }
        synchronized (this) {
            ArrayList<RunnableC9461c> arrayList = this.f40318g;
            if (arrayList == null) {
                return;
            }
            this.f40318g = null;
            int i2 = 0;
            while (true) {
                if (i2 < arrayList.size()) {
                    if (!(arrayList.get(i2).f40328e instanceof C9464f)) {
                        arrayList.get(i2).m533a();
                    }
                    i2++;
                }
            }
            for (i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).f40328e instanceof C9464f) {
                    arrayList.get(i).m533a();
                }
            }
            C9459a c9459a = this.f40320i;
            if (c9459a == null) {
                return;
            }
            c9459a.m548C(this.f40319h);
        }
    }

    /* renamed from: C */
    public void m548C(AbstractC9460b abstractC9460b) {
        if (!mo537e()) {
            return;
        }
        synchronized (this) {
            ArrayList<RunnableC9461c> arrayList = this.f40318g;
            if (arrayList != null) {
                int size = arrayList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (this.f40318g.get(size).f40328e == abstractC9460b) {
                        this.f40318g.remove(size);
                        break;
                    } else {
                        size--;
                    }
                }
                if (this.f40318g.isEmpty()) {
                    C9459a c9459a = this.f40320i;
                    if (c9459a != null) {
                        c9459a.m548C(this.f40319h);
                    }
                    this.f40318g = null;
                }
            }
        }
    }

    /* renamed from: I */
    public <V> C9458b m545I(C9462d<V> c9462d, V v) {
        return new C9458b(this, this.f40321j.m527b(c9462d, v));
    }

    /* renamed from: a */
    public C9458b mo538a() {
        C9458b mo517d = m547D().mo517d(this);
        C9458b c9458b = mo517d;
        if (mo517d == null) {
            c9458b = f40317f;
        }
        return c9458b;
    }

    /* renamed from: e */
    boolean mo537e() {
        return this.f40320i != null;
    }

    /* renamed from: g */
    public Throwable mo536g() {
        C9459a c9459a = this.f40320i;
        if (c9459a == null) {
            return null;
        }
        return c9459a.mo536g();
    }

    /* renamed from: q */
    public void mo535q(C9458b c9458b) {
        m543k(c9458b, "toAttach");
        m547D().mo518c(this, c9458b);
    }

    /* renamed from: u */
    public boolean mo534u() {
        C9459a c9459a = this.f40320i;
        if (c9459a == null) {
            return false;
        }
        return c9459a.mo534u();
    }

    /* renamed from: z */
    Object m540z(C9462d<?> c9462d) {
        return this.f40321j.m528a(c9462d);
    }
}
