package p170m7;

import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Semaphore;
import p148k7.C3340e;
import p148k7.C3378w;
import p229s2.C4280b;
import p293y2.C4989f;
import p293y2.C4995l;
import p293y2.C4996m;
import p293y2.C4999p;
import p303z2.C5053n;
/* renamed from: m7.g */
/* loaded from: classes2-dex2jar.jar:m7/g.class */
public class C3661g<T> extends C3658f implements AbstractFutureC3655c {

    /* renamed from: i */
    public static final /* synthetic */ int f11988i = 0;

    /* renamed from: d */
    public C3340e f11989d;

    /* renamed from: e */
    public Exception f11990e;

    /* renamed from: f */
    public T f11991f;

    /* renamed from: g */
    public boolean f11992g;

    /* renamed from: h */
    public AbstractC3662a<T> f11993h;

    /* renamed from: m7.g$a */
    /* loaded from: classes2-dex2jar.jar:m7/g$a.class */
    public interface AbstractC3662a<T> {
        /* renamed from: f */
        void mo103f(Exception exc, T t, C3663b c3663b);
    }

    /* renamed from: m7.g$b */
    /* loaded from: classes2-dex2jar.jar:m7/g$b.class */
    public static class C3663b {

        /* renamed from: a */
        public Exception f11994a;

        /* renamed from: b */
        public Object f11995b;

        /* renamed from: c */
        public AbstractC3662a f11996c;
    }

    public C3661g() {
    }

    public C3661g(T t) {
        m1914p(null, t, null);
    }

    @Override // p170m7.C3658f
    /* renamed from: c */
    public boolean mo1927c() {
        return m1913q(null);
    }

    @Override // p170m7.C3658f, p170m7.AbstractC3653a
    public boolean cancel() {
        return m1925e(this.f11992g);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return cancel();
    }

    @Override // p170m7.C3658f
    /* renamed from: d */
    public boolean mo1926d(AbstractC3653a abstractC3653a) {
        return super.mo1926d(abstractC3653a);
    }

    /* renamed from: e */
    public final boolean m1925e(boolean z) {
        AbstractC3662a<T> m1921i;
        if (!super.cancel()) {
            return false;
        }
        synchronized (this) {
            this.f11990e = new CancellationException();
            m1920j();
            m1921i = m1921i();
            this.f11992g = z;
        }
        m1922h(null, m1921i);
        return true;
    }

    /* renamed from: f */
    public AbstractFutureC3655c<T> m1924f(AbstractC3654b abstractC3654b) {
        C4995l c4995l = new C4995l(abstractC3654b, 5);
        C3661g c3661g = new C3661g();
        super.mo1926d(this);
        m1918l(null, new C5053n(c3661g, c4995l, 2));
        return c3661g;
    }

    /* renamed from: g */
    public final T m1923g() throws ExecutionException {
        if (this.f11990e == null) {
            return this.f11991f;
        }
        throw new ExecutionException(this.f11990e);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        synchronized (this) {
            if (!isCancelled() && !this.f11985a) {
                if (this.f11989d == null) {
                    this.f11989d = new C3340e();
                }
                C3340e c3340e = this.f11989d;
                Objects.requireNonNull(c3340e);
                C3378w m2329b = C3378w.m2329b(Thread.currentThread());
                C3340e c3340e2 = m2329b.f11416a;
                m2329b.f11416a = c3340e;
                Semaphore semaphore = m2329b.f11417b;
                try {
                    if (!c3340e.f11324a.tryAcquire()) {
                        while (true) {
                            Runnable remove = m2329b.remove();
                            if (remove == null) {
                                semaphore.acquire(Math.max(1, semaphore.availablePermits()));
                                if (c3340e.f11324a.tryAcquire()) {
                                    break;
                                }
                            } else {
                                remove.run();
                            }
                        }
                    }
                    m2329b.f11416a = c3340e2;
                    return m1923g();
                } catch (Throwable th) {
                    m2329b.f11416a = c3340e2;
                    throw th;
                }
            }
            return m1923g();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p170m7.C3661g.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final void m1922h(C3663b c3663b, AbstractC3662a<T> abstractC3662a) {
        if (!this.f11992g && abstractC3662a != null) {
            boolean z = false;
            C3663b c3663b2 = c3663b;
            if (c3663b == null) {
                z = true;
                c3663b2 = new C3663b();
            }
            c3663b2.f11996c = abstractC3662a;
            c3663b2.f11994a = this.f11990e;
            c3663b2.f11995b = this.f11991f;
            if (!z) {
                return;
            }
            while (true) {
                AbstractC3662a abstractC3662a2 = c3663b2.f11996c;
                if (abstractC3662a2 == 0) {
                    return;
                }
                Exception exc = c3663b2.f11994a;
                Object obj = c3663b2.f11995b;
                c3663b2.f11996c = null;
                c3663b2.f11994a = null;
                c3663b2.f11995b = null;
                abstractC3662a2.mo103f(exc, obj, c3663b2);
            }
        }
    }

    /* renamed from: i */
    public final AbstractC3662a<T> m1921i() {
        AbstractC3662a<T> abstractC3662a = this.f11993h;
        this.f11993h = null;
        return abstractC3662a;
    }

    /* renamed from: j */
    public void m1920j() {
        C3340e c3340e = this.f11989d;
        if (c3340e != null) {
            c3340e.f11324a.release();
            WeakHashMap<Thread, C3378w> weakHashMap = C3378w.f11415c;
            synchronized (weakHashMap) {
                for (C3378w c3378w : weakHashMap.values()) {
                    if (c3378w.f11416a == c3340e) {
                        c3378w.f11417b.release();
                    }
                }
            }
            this.f11989d = null;
        }
    }

    /* renamed from: k */
    public void m1919k(AbstractC3656d<T> abstractC3656d) {
        m1918l(null, new C4995l(abstractC3656d, 4));
    }

    /* renamed from: l */
    public void m1918l(C3663b c3663b, AbstractC3662a<T> abstractC3662a) {
        synchronized (this) {
            this.f11993h = abstractC3662a;
            if (this.f11985a || isCancelled()) {
                m1922h(c3663b, m1921i());
            }
        }
    }

    /* renamed from: m */
    public final AbstractFutureC3655c<T> m1917m(AbstractFutureC3655c<T> abstractFutureC3655c, C3663b c3663b) {
        super.mo1926d(abstractFutureC3655c);
        C3661g c3661g = new C3661g();
        if (abstractFutureC3655c instanceof C3661g) {
            ((C3661g) abstractFutureC3655c).m1918l(c3663b, new C4996m(this, c3661g, 2));
        } else {
            ((C3661g) abstractFutureC3655c).m1919k(new C4989f(this, c3661g));
        }
        return c3661g;
    }

    /* renamed from: n */
    public boolean m1916n(Exception exc) {
        return m1914p(exc, null, null);
    }

    /* renamed from: o */
    public boolean m1915o(Exception exc, T t) {
        return m1914p(exc, t, null);
    }

    /* renamed from: p */
    public final boolean m1914p(Exception exc, T t, C3663b c3663b) {
        synchronized (this) {
            if (!super.mo1927c()) {
                return false;
            }
            this.f11991f = t;
            this.f11990e = exc;
            m1920j();
            m1922h(c3663b, m1921i());
            return true;
        }
    }

    /* renamed from: q */
    public boolean m1913q(T t) {
        return m1914p(null, t, null);
    }

    /* renamed from: r */
    public AbstractFutureC3655c<T> m1912r(C4280b c4280b) {
        C3661g c3661g = new C3661g();
        super.mo1926d(this);
        m1918l(null, new C4996m(c4280b, c3661g, 3));
        return c3661g;
    }

    /* renamed from: s */
    public <R> AbstractFutureC3655c<R> m1911s(AbstractC3665i<R, T> abstractC3665i) {
        C3661g c3661g = new C3661g();
        super.mo1926d(this);
        m1918l(null, new C5053n(c3661g, abstractC3665i, 1));
        return c3661g;
    }

    /* renamed from: t */
    public <R> AbstractFutureC3655c<R> m1910t(AbstractC3664h<R, T> abstractC3664h) {
        C4999p c4999p = new C4999p(abstractC3664h);
        C3661g c3661g = new C3661g();
        super.mo1926d(this);
        m1918l(null, new C5053n(c3661g, c4999p, 1));
        return c3661g;
    }
}
