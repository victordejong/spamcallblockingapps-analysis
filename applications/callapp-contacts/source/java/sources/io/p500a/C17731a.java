package io.p500a;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.a.a */
/* loaded from: classes5-dex2jar.jar:io/a/a.class */
public class C17731a {

    /* renamed from: a */
    static final Logger f62587a = Logger.getLogger(C17731a.class.getName());

    /* renamed from: b */
    public static final C17731a f62588b;

    /* renamed from: f */
    private static final C17744c<C17736d<?>, Object> f62589f;

    /* renamed from: c */
    final C17733a f62590c;

    /* renamed from: d */
    public final C17744c<C17736d<?>, Object> f62591d;

    /* renamed from: e */
    final int f62592e;

    /* renamed from: g */
    private ArrayList<RunnableC17735c> f62593g;

    /* renamed from: h */
    private AbstractC17734b f62594h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.a.a$1 */
    /* loaded from: classes5-dex2jar.jar:io/a/a$1.class */
    public final class RunnableC177321 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Runnable f62595a;

        RunnableC177321(Runnable runnable) {
            C17731a.this = r4;
            this.f62595a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C17731a mo4762c = C17731a.this.mo4762c();
            try {
                this.f62595a.run();
            } finally {
                C17731a.this.mo4765a(mo4762c);
            }
        }
    }

    /* renamed from: io.a.a$a */
    /* loaded from: classes5-dex2jar.jar:io/a/a$a.class */
    public static final class C17733a extends C17731a implements Closeable {

        /* renamed from: f */
        final C17740b f62597f;

        /* renamed from: g */
        private final C17731a f62598g;

        /* renamed from: h */
        private boolean f62599h;

        /* renamed from: i */
        private Throwable f62600i;

        /* renamed from: j */
        private ScheduledFuture<?> f62601j;

        private C17733a(C17731a c17731a) {
            super(c17731a, c17731a.f62591d, null);
            this.f62597f = c17731a.mo4759f();
            this.f62598g = new C17731a(this, this.f62591d, null);
        }

        /* synthetic */ C17733a(C17731a c17731a, RunnableC177321 runnableC177321) {
            this(c17731a);
        }

        private C17733a(C17731a c17731a, C17740b c17740b) {
            super(c17731a, c17731a.f62591d, null);
            this.f62597f = c17740b;
            this.f62598g = new C17731a(this, this.f62591d, null);
        }

        /* synthetic */ C17733a(C17731a c17731a, C17740b c17740b, RunnableC177321 runnableC177321) {
            this(c17731a, c17740b);
        }

        @Override // io.p500a.C17731a
        /* renamed from: a */
        public final void mo4765a(C17731a c17731a) {
            this.f62598g.mo4765a(c17731a);
        }

        /* renamed from: a */
        public final boolean m4764a(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (!this.f62599h) {
                    this.f62599h = true;
                    ScheduledFuture<?> scheduledFuture = this.f62601j;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.f62601j = null;
                    }
                    this.f62600i = th;
                } else {
                    z = false;
                }
            }
            if (z) {
                m4766g();
            }
            return z;
        }

        @Override // io.p500a.C17731a
        /* renamed from: b */
        final boolean mo4763b() {
            return true;
        }

        @Override // io.p500a.C17731a
        /* renamed from: c */
        public final C17731a mo4762c() {
            return this.f62598g.mo4762c();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            m4764a((Throwable) null);
        }

        @Override // io.p500a.C17731a
        /* renamed from: d */
        public final boolean mo4761d() {
            synchronized (this) {
                if (this.f62599h) {
                    return true;
                }
                if (!C17731a.super.mo4761d()) {
                    return false;
                }
                m4764a(C17731a.super.mo4760e());
                return true;
            }
        }

        @Override // io.p500a.C17731a
        /* renamed from: e */
        public final Throwable mo4760e() {
            if (mo4761d()) {
                return this.f62600i;
            }
            return null;
        }

        @Override // io.p500a.C17731a
        /* renamed from: f */
        public final C17740b mo4759f() {
            return this.f62597f;
        }
    }

    /* renamed from: io.a.a$b */
    /* loaded from: classes5-dex2jar.jar:io/a/a$b.class */
    public interface AbstractC17734b {
        /* renamed from: a */
        void mo4756a(C17731a c17731a);
    }

    /* renamed from: io.a.a$c */
    /* loaded from: classes5-dex2jar.jar:io/a/a$c.class */
    public final class RunnableC17735c implements Runnable {

        /* renamed from: a */
        final AbstractC17734b f62602a;

        /* renamed from: c */
        private final Executor f62604c;

        RunnableC17735c(Executor executor, AbstractC17734b abstractC17734b) {
            C17731a.this = r4;
            this.f62604c = executor;
            this.f62602a = abstractC17734b;
        }

        /* renamed from: a */
        final void m4758a() {
            try {
                this.f62604c.execute(this);
            } catch (Throwable th) {
                C17731a.f62587a.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f62602a.mo4756a(C17731a.this);
        }
    }

    /* renamed from: io.a.a$d */
    /* loaded from: classes5-dex2jar.jar:io/a/a$d.class */
    public static final class C17736d<T> {

        /* renamed from: a */
        public final T f62605a;

        /* renamed from: b */
        private final String f62606b;

        C17736d(String str) {
            this(str, null);
        }

        C17736d(String str, T t) {
            this.f62606b = (String) C17731a.m4768a(str, "name");
            this.f62605a = t;
        }

        public final String toString() {
            return this.f62606b;
        }
    }

    /* renamed from: io.a.a$e */
    /* loaded from: classes5-dex2jar.jar:io/a/a$e.class */
    public static final class C17737e {

        /* renamed from: a */
        static final AbstractC17739g f62607a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f62607a = m4757a(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                C17731a.f62587a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        private C17737e() {
        }

        /* renamed from: a */
        private static AbstractC17739g m4757a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (AbstractC17739g) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(AbstractC17739g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new C17749d();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    /* renamed from: io.a.a$f */
    /* loaded from: classes5-dex2jar.jar:io/a/a$f.class */
    public final class C17738f implements AbstractC17734b {
        private C17738f() {
            C17731a.this = r4;
        }

        /* synthetic */ C17738f(C17731a c17731a, RunnableC177321 runnableC177321) {
            this();
        }

        @Override // io.p500a.C17731a.AbstractC17734b
        /* renamed from: a */
        public final void mo4756a(C17731a c17731a) {
            C17731a c17731a2 = C17731a.this;
            if (c17731a2 instanceof C17733a) {
                ((C17733a) c17731a2).m4764a(c17731a.mo4760e());
            } else {
                c17731a2.m4766g();
            }
        }
    }

    /* renamed from: io.a.a$g */
    /* loaded from: classes5-dex2jar.jar:io/a/a$g.class */
    public static abstract class AbstractC17739g {
        /* renamed from: a */
        public abstract C17731a mo4748a();

        /* renamed from: a */
        public C17731a mo4747a(C17731a c17731a) {
            mo4748a();
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        /* renamed from: a */
        public abstract void mo4746a(C17731a c17731a, C17731a c17731a2);
    }

    static {
        C17744c<C17736d<?>, Object> c17744c = new C17744c<>();
        f62589f = c17744c;
        f62588b = new C17731a((C17731a) null, c17744c);
    }

    public C17731a(C17731a c17731a, C17744c<C17736d<?>, Object> c17744c) {
        C17733a c17733a = null;
        this.f62594h = new C17738f(this, null);
        this.f62590c = c17731a != null ? c17731a instanceof C17733a ? (C17733a) c17731a : c17731a.f62590c : c17733a;
        this.f62591d = c17744c;
        int i = c17731a == null ? 0 : c17731a.f62592e + 1;
        this.f62592e = i;
        m4770a(i);
    }

    /* synthetic */ C17731a(C17731a c17731a, C17744c c17744c, RunnableC177321 runnableC177321) {
        this(c17731a, c17744c);
    }

    private C17731a(C17744c<C17736d<?>, Object> c17744c, int i) {
        this.f62594h = new C17738f(this, null);
        this.f62590c = null;
        this.f62591d = c17744c;
        this.f62592e = i;
        m4770a(i);
    }

    /* renamed from: a */
    public static <T> C17736d<T> m4767a(String str) {
        return new C17736d<>(str);
    }

    /* renamed from: a */
    public static C17731a m4771a() {
        C17731a mo4748a = C17737e.f62607a.mo4748a();
        C17731a c17731a = mo4748a;
        if (mo4748a == null) {
            c17731a = f62588b;
        }
        return c17731a;
    }

    /* renamed from: a */
    static <T> T m4768a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    private static void m4770a(int i) {
        if (i == 1000) {
            f62587a.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    /* renamed from: a */
    public final void m4769a(AbstractC17734b abstractC17734b) {
        if (!mo4763b()) {
            return;
        }
        synchronized (this) {
            ArrayList<RunnableC17735c> arrayList = this.f62593g;
            if (arrayList != null) {
                int size = arrayList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (this.f62593g.get(size).f62602a == abstractC17734b) {
                        this.f62593g.remove(size);
                        break;
                    } else {
                        size--;
                    }
                }
                if (this.f62593g.isEmpty()) {
                    C17733a c17733a = this.f62590c;
                    if (c17733a != null) {
                        c17733a.m4769a(this.f62594h);
                    }
                    this.f62593g = null;
                }
            }
        }
    }

    /* renamed from: a */
    public void mo4765a(C17731a c17731a) {
        m4768a(c17731a, "toAttach");
        C17737e.f62607a.mo4746a(this, c17731a);
    }

    /* renamed from: b */
    boolean mo4763b() {
        return this.f62590c != null;
    }

    /* renamed from: c */
    public C17731a mo4762c() {
        C17731a mo4747a = C17737e.f62607a.mo4747a(this);
        C17731a c17731a = mo4747a;
        if (mo4747a == null) {
            c17731a = f62588b;
        }
        return c17731a;
    }

    /* renamed from: d */
    public boolean mo4761d() {
        C17733a c17733a = this.f62590c;
        if (c17733a == null) {
            return false;
        }
        return c17733a.mo4761d();
    }

    /* renamed from: e */
    public Throwable mo4760e() {
        C17733a c17733a = this.f62590c;
        if (c17733a == null) {
            return null;
        }
        return c17733a.mo4760e();
    }

    /* renamed from: f */
    public C17740b mo4759f() {
        C17733a c17733a = this.f62590c;
        if (c17733a == null) {
            return null;
        }
        return c17733a.f62597f;
    }

    /* renamed from: g */
    final void m4766g() {
        int i;
        if (!mo4763b()) {
            return;
        }
        synchronized (this) {
            ArrayList<RunnableC17735c> arrayList = this.f62593g;
            if (arrayList == null) {
                return;
            }
            this.f62593g = null;
            int i2 = 0;
            while (true) {
                if (i2 < arrayList.size()) {
                    if (!(arrayList.get(i2).f62602a instanceof C17738f)) {
                        arrayList.get(i2).m4758a();
                    }
                    i2++;
                }
            }
            for (i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).f62602a instanceof C17738f) {
                    arrayList.get(i).m4758a();
                }
            }
            C17733a c17733a = this.f62590c;
            if (c17733a == null) {
                return;
            }
            c17733a.m4769a(this.f62594h);
        }
    }
}
