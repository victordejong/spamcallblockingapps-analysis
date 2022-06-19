package p1727n3.p1909z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1909z.AbstractC27583k2;
import p1727n3.p1909z.AbstractC27592q1;
import p1727n3.p1909z.AbstractC27597r0;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
/* renamed from: n3.z.l0 */
/* loaded from: classes-dex2jar.jar:n3/z/l0.class */
public final class C27586l0<K, V> {

    /* renamed from: a */
    public final AtomicBoolean f77745a = new AtomicBoolean(false);

    /* renamed from: b */
    public AbstractC27592q1.AbstractC27596d f77746b = new c(this);

    /* renamed from: c */
    public final i0 f77747c;

    /* renamed from: d */
    public final AbstractC27592q1.C27595c f77748d;

    /* renamed from: e */
    public final AbstractC27583k2<K, V> f77749e;

    /* renamed from: f */
    public final g0 f77750f;

    /* renamed from: g */
    public final g0 f77751g;

    /* renamed from: h */
    public final AbstractC27588b<V> f77752h;

    /* renamed from: i */
    public final AbstractC27587a<K> f77753i;

    /* renamed from: n3.z.l0$a */
    /* loaded from: classes-dex2jar.jar:n3/z/l0$a.class */
    public interface AbstractC27587a<K> {
        /* renamed from: f */
        K m56f();

        /* renamed from: g */
        K m55g();
    }

    /* renamed from: n3.z.l0$b */
    /* loaded from: classes-dex2jar.jar:n3/z/l0$b.class */
    public interface AbstractC27588b<V> {
        /* renamed from: a */
        boolean m54a(EnumC27601t0 enumC27601t0, AbstractC27583k2.AbstractC27585b.b<?, V> bVar);

        /* renamed from: b */
        void m53b(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0);
    }

    public C27586l0(i0 i0Var, AbstractC27592q1.C27595c c27595c, AbstractC27583k2<K, V> abstractC27583k2, g0 g0Var, g0 g0Var2, AbstractC27588b<V> abstractC27588b, AbstractC27587a<K> abstractC27587a) {
        l.e(i0Var, "pagedListScope");
        l.e(c27595c, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(abstractC27583k2, "source");
        l.e(g0Var, "notifyDispatcher");
        l.e(g0Var2, "fetchDispatcher");
        l.e(abstractC27588b, "pageConsumer");
        l.e(abstractC27587a, "keyProvider");
        this.f77747c = i0Var;
        this.f77748d = c27595c;
        this.f77749e = abstractC27583k2;
        this.f77750f = g0Var;
        this.f77751g = g0Var2;
        this.f77752h = abstractC27588b;
        this.f77753i = abstractC27587a;
    }

    /* renamed from: a */
    public final boolean m60a() {
        return this.f77745a.get();
    }

    /* renamed from: b */
    public final void m59b(EnumC27601t0 enumC27601t0, AbstractC27583k2.AbstractC27585b.b<K, V> bVar) {
        if (m60a()) {
            return;
        }
        if (!this.f77752h.m54a(enumC27601t0, bVar)) {
            this.f77746b.m34b(enumC27601t0, bVar.a.isEmpty() ? AbstractC27597r0.c.b : AbstractC27597r0.c.c);
            return;
        }
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 1) {
            m57d();
        } else if (ordinal != 2) {
            throw new IllegalStateException("Can only fetch more during append/prepend");
        } else {
            m58c();
        }
    }

    /* renamed from: c */
    public final void m58c() {
        EnumC27601t0 enumC27601t0 = EnumC27601t0.APPEND;
        K m56f = this.f77753i.m56f();
        if (m56f == null) {
            AbstractC27583k2.AbstractC27585b.b bVar = AbstractC27583k2.AbstractC27585b.b.g;
            m59b(enumC27601t0, AbstractC27583k2.AbstractC27585b.b.a());
            return;
        }
        this.f77746b.m34b(enumC27601t0, AbstractC27597r0.b.b);
        AbstractC27592q1.C27595c c27595c = this.f77748d;
        d.w2(this.f77747c, this.f77751g, (j0) null, new m0(this, new AbstractC27583k2.AbstractC27584a.a(m56f, c27595c.f77779a, c27595c.f77781c), enumC27601t0, (s1.w.d) null), 2, (Object) null);
    }

    /* renamed from: d */
    public final void m57d() {
        EnumC27601t0 enumC27601t0 = EnumC27601t0.PREPEND;
        K m55g = this.f77753i.m55g();
        if (m55g == null) {
            AbstractC27583k2.AbstractC27585b.b bVar = AbstractC27583k2.AbstractC27585b.b.g;
            m59b(enumC27601t0, AbstractC27583k2.AbstractC27585b.b.a());
            return;
        }
        this.f77746b.m34b(enumC27601t0, AbstractC27597r0.b.b);
        AbstractC27592q1.C27595c c27595c = this.f77748d;
        d.w2(this.f77747c, this.f77751g, (j0) null, new m0(this, new AbstractC27583k2.AbstractC27584a.b(m55g, c27595c.f77779a, c27595c.f77781c), enumC27601t0, (s1.w.d) null), 2, (Object) null);
    }
}
