package p193e.p1451f.p1452a.p1457n.p1460o;

import android.os.SystemClock;
import android.util.Log;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22226e;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22294a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22385q;
import p193e.p1451f.p1452a.p1457n.p1460o.RunnableC22354i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22334i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22325b;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22329d;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22331e;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22332f;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22333h;
import p193e.p1451f.p1452a.p1457n.p1460o.p1463d0.ExecutorServiceC22344a;
import p193e.p1451f.p1452a.p1476r.AbstractC22592i;
import p193e.p1451f.p1452a.p1476r.C22593j;
import p193e.p1451f.p1452a.p1480t.C22619f;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
/* renamed from: e.f.a.n.o.l */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/l.class */
public class C22369l implements AbstractC22382n, AbstractC22334i.AbstractC22335a, C22385q.AbstractC22386a {

    /* renamed from: i */
    public static final boolean f62128i = Log.isLoggable("Engine", 2);

    /* renamed from: a */
    public final C22390t f62129a;

    /* renamed from: b */
    public final C22384p f62130b;

    /* renamed from: c */
    public final AbstractC22334i f62131c;

    /* renamed from: d */
    public final C22372b f62132d;

    /* renamed from: e */
    public final C22397z f62133e;

    /* renamed from: f */
    public final C22374c f62134f;

    /* renamed from: g */
    public final C22370a f62135g;

    /* renamed from: h */
    public final C22294a f62136h;

    /* renamed from: e.f.a.n.o.l$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$a.class */
    public static class C22370a {

        /* renamed from: a */
        public final RunnableC22354i.AbstractC22358d f62137a;

        /* renamed from: b */
        public final AbstractC26555e<RunnableC22354i<?>> f62138b = C22625a.m8013a(DrawableConstants.CtaButton.WIDTH_DIPS, new C22371a());

        /* renamed from: c */
        public int f62139c;

        /* renamed from: e.f.a.n.o.l$a$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$a$a.class */
        public class C22371a implements C22625a.AbstractC22627b<RunnableC22354i<?>> {
            public C22371a() {
                C22370a.this = r4;
            }

            @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22627b
            public RunnableC22354i<?> create() {
                C22370a c22370a = C22370a.this;
                return new RunnableC22354i<>(c22370a.f62137a, c22370a.f62138b);
            }
        }

        public C22370a(RunnableC22354i.AbstractC22358d abstractC22358d) {
            this.f62137a = abstractC22358d;
        }
    }

    /* renamed from: e.f.a.n.o.l$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$b.class */
    public static class C22372b {

        /* renamed from: a */
        public final ExecutorServiceC22344a f62141a;

        /* renamed from: b */
        public final ExecutorServiceC22344a f62142b;

        /* renamed from: c */
        public final ExecutorServiceC22344a f62143c;

        /* renamed from: d */
        public final ExecutorServiceC22344a f62144d;

        /* renamed from: e */
        public final AbstractC22382n f62145e;

        /* renamed from: f */
        public final C22385q.AbstractC22386a f62146f;

        /* renamed from: g */
        public final AbstractC26555e<C22376m<?>> f62147g = C22625a.m8013a(DrawableConstants.CtaButton.WIDTH_DIPS, new C22373a());

        /* renamed from: e.f.a.n.o.l$b$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$b$a.class */
        public class C22373a implements C22625a.AbstractC22627b<C22376m<?>> {
            public C22373a() {
                C22372b.this = r4;
            }

            @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22627b
            public C22376m<?> create() {
                C22372b c22372b = C22372b.this;
                return new C22376m<>(c22372b.f62141a, c22372b.f62142b, c22372b.f62143c, c22372b.f62144d, c22372b.f62145e, c22372b.f62146f, c22372b.f62147g);
            }
        }

        public C22372b(ExecutorServiceC22344a executorServiceC22344a, ExecutorServiceC22344a executorServiceC22344a2, ExecutorServiceC22344a executorServiceC22344a3, ExecutorServiceC22344a executorServiceC22344a4, AbstractC22382n abstractC22382n, C22385q.AbstractC22386a abstractC22386a) {
            this.f62141a = executorServiceC22344a;
            this.f62142b = executorServiceC22344a2;
            this.f62143c = executorServiceC22344a3;
            this.f62144d = executorServiceC22344a4;
            this.f62145e = abstractC22382n;
            this.f62146f = abstractC22386a;
        }
    }

    /* renamed from: e.f.a.n.o.l$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$c.class */
    public static class C22374c implements RunnableC22354i.AbstractC22358d {

        /* renamed from: a */
        public final AbstractC22322a.AbstractC22323a f62149a;

        /* renamed from: b */
        public volatile AbstractC22322a f62150b;

        public C22374c(AbstractC22322a.AbstractC22323a abstractC22323a) {
            this.f62149a = abstractC22323a;
        }

        /* renamed from: a */
        public AbstractC22322a m8268a() {
            File file;
            C22331e c22331e;
            if (this.f62150b == null) {
                synchronized (this) {
                    if (this.f62150b == null) {
                        C22329d c22329d = (C22329d) this.f62149a;
                        C22332f c22332f = (C22332f) c22329d.f62004b;
                        File cacheDir = c22332f.f62010a.getCacheDir();
                        if (cacheDir == null) {
                            file = null;
                        } else {
                            file = cacheDir;
                            if (c22332f.f62011b != null) {
                                file = new File(cacheDir, c22332f.f62011b);
                            }
                        }
                        if (file == null) {
                            c22331e = null;
                        } else {
                            if (!file.mkdirs()) {
                                c22331e = null;
                                if (file.exists()) {
                                    if (!file.isDirectory()) {
                                        c22331e = null;
                                    }
                                }
                            }
                            c22331e = new C22331e(file, c22329d.f62003a);
                        }
                        this.f62150b = c22331e;
                    }
                    if (this.f62150b == null) {
                        this.f62150b = new C22325b();
                    }
                }
            }
            return this.f62150b;
        }
    }

    /* renamed from: e.f.a.n.o.l$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/l$d.class */
    public class C22375d {

        /* renamed from: a */
        public final C22376m<?> f62151a;

        /* renamed from: b */
        public final AbstractC22592i f62152b;

        public C22375d(AbstractC22592i abstractC22592i, C22376m<?> c22376m) {
            C22369l.this = r4;
            this.f62152b = abstractC22592i;
            this.f62151a = c22376m;
        }
    }

    public C22369l(AbstractC22334i abstractC22334i, AbstractC22322a.AbstractC22323a abstractC22323a, ExecutorServiceC22344a executorServiceC22344a, ExecutorServiceC22344a executorServiceC22344a2, ExecutorServiceC22344a executorServiceC22344a3, ExecutorServiceC22344a executorServiceC22344a4, boolean z) {
        this.f62131c = abstractC22334i;
        C22374c c22374c = new C22374c(abstractC22323a);
        this.f62134f = c22374c;
        C22294a c22294a = new C22294a(z);
        this.f62136h = c22294a;
        synchronized (this) {
            synchronized (c22294a) {
                c22294a.f61947e = this;
            }
        }
        this.f62130b = new C22384p();
        this.f62129a = new C22390t();
        this.f62132d = new C22372b(executorServiceC22344a, executorServiceC22344a2, executorServiceC22344a3, executorServiceC22344a4, this, this);
        this.f62135g = new C22370a(c22374c);
        this.f62133e = new C22397z();
        ((C22333h) abstractC22334i).f62012d = this;
    }

    /* renamed from: d */
    public static void m8272d(String str, long j, AbstractC22263f abstractC22263f) {
        StringBuilder m8696K = C22128a.m8696K(str, " in ");
        m8696K.append(C22619f.m8031a(j));
        m8696K.append("ms, key: ");
        m8696K.append(abstractC22263f);
        m8696K.toString();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.C22385q.AbstractC22386a
    /* renamed from: a */
    public void mo8257a(AbstractC22263f abstractC22263f, C22385q<?> c22385q) {
        C22294a c22294a = this.f62136h;
        synchronized (c22294a) {
            C22294a.C22297b remove = c22294a.f61945c.remove(abstractC22263f);
            if (remove != null) {
                remove.f61951c = null;
                remove.clear();
            }
        }
        if (c22385q.f62195a) {
            ((C22333h) this.f62131c).m8027d(abstractC22263f, c22385q);
        } else {
            this.f62133e.m8246a(c22385q);
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: b */
    public <R> C22375d m8274b(C22226e c22226e, Object obj, AbstractC22263f abstractC22263f, int i, int i2, Class<?> cls, Class<R> cls2, EnumC22227f enumC22227f, AbstractC22364k abstractC22364k, Map<Class<?>, AbstractC22271m<?>> map, boolean z, boolean z2, C22267i c22267i, boolean z3, boolean z4, boolean z5, boolean z6, AbstractC22592i abstractC22592i, Executor executor) {
        char c;
        if (f62128i) {
            int i3 = C22619f.f62640b;
            c = SystemClock.elapsedRealtimeNanos();
        } else {
            c = 0;
        }
        Objects.requireNonNull(this.f62130b);
        C22383o c22383o = new C22383o(obj, abstractC22263f, i, i2, map, cls, cls2, c22267i);
        synchronized (this) {
            C22385q<?> m8273c = m8273c(c22383o, z3, c);
            if (m8273c == null) {
                return m8269g(c22226e, obj, abstractC22263f, i, i2, cls, cls2, enumC22227f, abstractC22364k, map, z, z2, c22267i, z3, z4, z5, z6, abstractC22592i, executor, c22383o, c);
            }
            ((C22593j) abstractC22592i).m8062l(m8273c, EnumC22258a.MEMORY_CACHE);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public final C22385q<?> m8273c(C22383o c22383o, boolean z, long j) {
        C22385q<?> c22385q;
        Object remove;
        if (!z) {
            return null;
        }
        C22294a c22294a = this.f62136h;
        synchronized (c22294a) {
            C22294a.C22297b c22297b = c22294a.f61945c.get(c22383o);
            if (c22297b == null) {
                c22385q = null;
            } else {
                c22385q = c22297b.get();
                if (c22385q == null) {
                    c22294a.m8348b(c22297b);
                }
            }
        }
        if (c22385q != null) {
            c22385q.m8259d();
        }
        if (c22385q != null) {
            if (f62128i) {
                m8272d("Loaded resource from active resources", j, c22383o);
            }
            return c22385q;
        }
        C22333h c22333h = (C22333h) this.f62131c;
        synchronized (c22333h) {
            remove = c22333h.f62641a.remove(c22383o);
            if (remove != null) {
                c22333h.f62643c -= c22333h.mo8029b(remove);
            }
        }
        AbstractC22394w abstractC22394w = (AbstractC22394w) remove;
        C22385q<?> c22385q2 = abstractC22394w == null ? null : abstractC22394w instanceof C22385q ? (C22385q) abstractC22394w : new C22385q<>(abstractC22394w, true, true, c22383o, this);
        if (c22385q2 != null) {
            c22385q2.m8259d();
            this.f62136h.m8349a(c22383o, c22385q2);
        }
        if (c22385q2 == null) {
            return null;
        }
        if (f62128i) {
            m8272d("Loaded resource from cache", j, c22383o);
        }
        return c22385q2;
    }

    /* renamed from: e */
    public void m8271e(C22376m<?> c22376m, AbstractC22263f abstractC22263f, C22385q<?> c22385q) {
        synchronized (this) {
            if (c22385q != null) {
                if (c22385q.f62195a) {
                    this.f62136h.m8349a(abstractC22263f, c22385q);
                }
            }
            C22390t c22390t = this.f62129a;
            Objects.requireNonNull(c22390t);
            Map<AbstractC22263f, C22376m<?>> m8251a = c22390t.m8251a(c22376m.f62170p);
            if (c22376m.equals(m8251a.get(abstractC22263f))) {
                m8251a.remove(abstractC22263f);
            }
        }
    }

    /* renamed from: f */
    public void m8270f(AbstractC22394w<?> abstractC22394w) {
        if (abstractC22394w instanceof C22385q) {
            ((C22385q) abstractC22394w).m8258e();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01e4 A[Catch: all -> 0x0240, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:19:0x01b5, B:21:0x01cc, B:28:0x01e4, B:29:0x01ed, B:31:0x01f5, B:32:0x01fe, B:34:0x0206, B:35:0x020f, B:37:0x0216), top: B:52:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01ed A[Catch: all -> 0x0240, TRY_ENTER, TryCatch #0 {, blocks: (B:19:0x01b5, B:21:0x01cc, B:28:0x01e4, B:29:0x01ed, B:31:0x01f5, B:32:0x01fe, B:34:0x0206, B:35:0x020f, B:37:0x0216), top: B:52:0x01b5 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> p193e.p1451f.p1452a.p1457n.p1460o.C22369l.C22375d m8269g(p193e.p1451f.p1452a.C22226e r7, java.lang.Object r8, p193e.p1451f.p1452a.p1457n.AbstractC22263f r9, int r10, int r11, java.lang.Class<?> r12, java.lang.Class<R> r13, p193e.p1451f.p1452a.EnumC22227f r14, p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k r15, java.util.Map<java.lang.Class<?>, p193e.p1451f.p1452a.p1457n.AbstractC22271m<?>> r16, boolean r17, boolean r18, p193e.p1451f.p1452a.p1457n.C22267i r19, boolean r20, boolean r21, boolean r22, boolean r23, p193e.p1451f.p1452a.p1476r.AbstractC22592i r24, java.util.concurrent.Executor r25, p193e.p1451f.p1452a.p1457n.p1460o.C22383o r26, long r27) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1460o.C22369l.m8269g(e.f.a.e, java.lang.Object, e.f.a.n.f, int, int, java.lang.Class, java.lang.Class, e.f.a.f, e.f.a.n.o.k, java.util.Map, boolean, boolean, e.f.a.n.i, boolean, boolean, boolean, boolean, e.f.a.r.i, java.util.concurrent.Executor, e.f.a.n.o.o, long):e.f.a.n.o.l$d");
    }
}
