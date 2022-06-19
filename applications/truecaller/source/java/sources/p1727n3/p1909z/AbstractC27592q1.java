package p1727n3.p1909z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.lang.ref.WeakReference;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1909z.AbstractC27597r0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.g0;
import q3.a.i0;
import s1.d0.j;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: n3.z.q1 */
/* loaded from: classes-dex2jar.jar:n3/z/q1.class */
public abstract class AbstractC27592q1<T> extends AbstractList<T> {

    /* renamed from: a */
    public Runnable f77770a;

    /* renamed from: b */
    public final int f77771b;

    /* renamed from: c */
    public final List<WeakReference<AbstractC27594b>> f77772c = new ArrayList();

    /* renamed from: d */
    public final List<WeakReference<p<EnumC27601t0, AbstractC27597r0, s>>> f77773d = new ArrayList();

    /* renamed from: e */
    public final AbstractC27583k2<?, T> f77774e;

    /* renamed from: f */
    public final i0 f77775f;

    /* renamed from: g */
    public final g0 f77776g;

    /* renamed from: h */
    public final x1<T> f77777h;

    /* renamed from: i */
    public final C27595c f77778i;

    /* renamed from: n3.z.q1$a */
    /* loaded from: classes-dex2jar.jar:n3/z/q1$a.class */
    public static abstract class AbstractC27593a<T> {
    }

    /* renamed from: n3.z.q1$b */
    /* loaded from: classes-dex2jar.jar:n3/z/q1$b.class */
    public static abstract class AbstractC27594b {
        /* renamed from: a */
        public abstract void m38a(int i, int i2);

        /* renamed from: b */
        public abstract void m37b(int i, int i2);

        /* renamed from: c */
        public abstract void m36c(int i, int i2);
    }

    /* renamed from: n3.z.q1$c */
    /* loaded from: classes-dex2jar.jar:n3/z/q1$c.class */
    public static final class C27595c {

        /* renamed from: a */
        public final int f77779a;

        /* renamed from: b */
        public final int f77780b;

        /* renamed from: c */
        public final boolean f77781c;

        /* renamed from: d */
        public final int f77782d;

        public C27595c(int i, int i2, boolean z, int i3, int i4) {
            this.f77779a = i;
            this.f77780b = i2;
            this.f77781c = z;
            this.f77782d = i3;
        }
    }

    /* renamed from: n3.z.q1$d */
    /* loaded from: classes-dex2jar.jar:n3/z/q1$d.class */
    public static abstract class AbstractC27596d {

        /* renamed from: a */
        public AbstractC27597r0 f77783a;

        /* renamed from: b */
        public AbstractC27597r0 f77784b;

        /* renamed from: c */
        public AbstractC27597r0 f77785c;

        public AbstractC27596d() {
            AbstractC27597r0.c cVar = AbstractC27597r0.c.c;
            this.f77783a = cVar;
            this.f77784b = cVar;
            this.f77785c = cVar;
        }

        /* renamed from: a */
        public abstract void m35a(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0);

        /* renamed from: b */
        public final void m34b(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0) {
            l.e(enumC27601t0, "type");
            l.e(abstractC27597r0, "state");
            int ordinal = enumC27601t0.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        if (l.a(this.f77785c, abstractC27597r0)) {
                            return;
                        }
                        this.f77785c = abstractC27597r0;
                    }
                } else if (l.a(this.f77784b, abstractC27597r0)) {
                    return;
                } else {
                    this.f77784b = abstractC27597r0;
                }
            } else if (l.a(this.f77783a, abstractC27597r0)) {
                return;
            } else {
                this.f77783a = abstractC27597r0;
            }
            m35a(enumC27601t0, abstractC27597r0);
        }
    }

    public AbstractC27592q1(AbstractC27583k2<?, T> abstractC27583k2, i0 i0Var, g0 g0Var, x1<T> x1Var, C27595c c27595c) {
        l.e(abstractC27583k2, "pagingSource");
        l.e(i0Var, "coroutineScope");
        l.e(g0Var, "notifyDispatcher");
        l.e(x1Var, "storage");
        l.e(c27595c, DTBMetricsConfiguration.CONFIG_DIR);
        this.f77774e = abstractC27583k2;
        this.f77775f = i0Var;
        this.f77776g = g0Var;
        this.f77777h = x1Var;
        this.f77778i = c27595c;
        this.f77771b = (c27595c.f77780b * 2) + c27595c.f77779a;
    }

    /* renamed from: c */
    public final void m50c(AbstractC27594b abstractC27594b) {
        l.e(abstractC27594b, "callback");
        i.w0(this.f77772c, e.b);
        this.f77772c.add(new WeakReference<>(abstractC27594b));
    }

    /* renamed from: d */
    public final void m49d(p<? super EnumC27601t0, ? super AbstractC27597r0, s> pVar) {
        l.e(pVar, "listener");
        i.w0(this.f77773d, f.b);
        this.f77773d.add(new WeakReference<>(pVar));
        m48e(pVar);
    }

    /* renamed from: e */
    public abstract void m48e(p<? super EnumC27601t0, ? super AbstractC27597r0, s> pVar);

    /* renamed from: f */
    public abstract Object m47f();

    /* renamed from: g */
    public AbstractC27583k2<?, T> m46g() {
        return this.f77774e;
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return (T) this.f77777h.get(i);
    }

    /* renamed from: h */
    public abstract boolean m45h();

    /* renamed from: i */
    public boolean m44i() {
        return m45h();
    }

    /* renamed from: j */
    public final void m43j(int i) {
        if (i < 0 || i >= size()) {
            StringBuilder m8720E = C22128a.m8720E("Index: ", i, ", Size: ");
            m8720E.append(size());
            throw new IndexOutOfBoundsException(m8720E.toString());
        }
        x1<T> x1Var = this.f77777h;
        x1Var.g = j.d(i - x1Var.b, 0, x1Var.f - 1);
        m42k(i);
    }

    /* renamed from: k */
    public abstract void m42k(int i);

    /* renamed from: l */
    public final void m41l(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        for (WeakReference weakReference : i.x0(this.f77772c)) {
            AbstractC27594b abstractC27594b = (AbstractC27594b) weakReference.get();
            if (abstractC27594b != null) {
                abstractC27594b.m38a(i, i2);
            }
        }
    }

    /* renamed from: m */
    public final void m40m(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        for (WeakReference weakReference : i.x0(this.f77772c)) {
            AbstractC27594b abstractC27594b = (AbstractC27594b) weakReference.get();
            if (abstractC27594b != null) {
                abstractC27594b.m37b(i, i2);
            }
        }
    }

    /* renamed from: n */
    public void m39n(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0) {
        l.e(enumC27601t0, "loadType");
        l.e(abstractC27597r0, "loadState");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f77777h.a();
    }
}
