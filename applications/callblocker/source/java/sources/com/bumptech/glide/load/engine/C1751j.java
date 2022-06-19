package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.p025g.C0523e;
import com.bumptech.glide.C1391e;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.C1764o;
import com.bumptech.glide.load.engine.RunnableC1734g;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import com.bumptech.glide.load.engine.p091b.AbstractC1710h;
import com.bumptech.glide.load.engine.p091b.C1700b;
import com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a;
import com.bumptech.glide.p073f.AbstractC1423f;
import com.bumptech.glide.p077h.C1452e;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import com.bumptech.glide.p077h.p078a.C1437a;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j.class */
public class C1751j implements AbstractC1710h.AbstractC1711a, AbstractC1761l, C1764o.AbstractC1765a {

    /* renamed from: a */
    private static final boolean f5306a = Log.isLoggable("Engine", 2);

    /* renamed from: b */
    private final C1767q f5307b;

    /* renamed from: c */
    private final C1763n f5308c;

    /* renamed from: d */
    private final AbstractC1710h f5309d;

    /* renamed from: e */
    private final C1754b f5310e;

    /* renamed from: f */
    private final C1774w f5311f;

    /* renamed from: g */
    private final C1756c f5312g;

    /* renamed from: h */
    private final C1752a f5313h;

    /* renamed from: i */
    private final C1667a f5314i;

    /* renamed from: com.bumptech.glide.load.engine.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$a.class */
    public static class C1752a {

        /* renamed from: a */
        final RunnableC1734g.AbstractC1739d f5315a;

        /* renamed from: b */
        final C0523e.AbstractC0524a<RunnableC1734g<?>> f5316b = C1437a.m17028a(150, new C1437a.AbstractC1441a<RunnableC1734g<?>>() { // from class: com.bumptech.glide.load.engine.j.a.1
            /* renamed from: a */
            public RunnableC1734g<?> mo16349b() {
                return new RunnableC1734g<>(C1752a.this.f5315a, C1752a.this.f5316b);
            }
        });

        /* renamed from: c */
        private int f5317c;

        C1752a(RunnableC1734g.AbstractC1739d abstractC1739d) {
            this.f5315a = abstractC1739d;
        }

        /* renamed from: a */
        <R> RunnableC1734g<R> m16394a(C1391e c1391e, Object obj, C1762m c1762m, AbstractC1777f abstractC1777f, int i, int i2, Class<?> cls, Class<R> cls2, EnumC1428g enumC1428g, AbstractC1745i abstractC1745i, Map<Class<?>, AbstractC1784k<?>> map, boolean z, boolean z2, boolean z3, C1781h c1781h, RunnableC1734g.AbstractC1736a<R> abstractC1736a) {
            RunnableC1734g runnableC1734g = (RunnableC1734g) C1456i.m16989a(this.f5316b.mo17021a());
            int i3 = this.f5317c;
            this.f5317c = i3 + 1;
            return runnableC1734g.m16442a(c1391e, obj, c1762m, abstractC1777f, i, i2, cls, cls2, enumC1428g, abstractC1745i, map, z, z2, z3, c1781h, abstractC1736a, i3);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$b.class */
    public static class C1754b {

        /* renamed from: a */
        final ExecutorServiceC1720a f5319a;

        /* renamed from: b */
        final ExecutorServiceC1720a f5320b;

        /* renamed from: c */
        final ExecutorServiceC1720a f5321c;

        /* renamed from: d */
        final ExecutorServiceC1720a f5322d;

        /* renamed from: e */
        final AbstractC1761l f5323e;

        /* renamed from: f */
        final C0523e.AbstractC0524a<C1758k<?>> f5324f = C1437a.m17028a(150, new C1437a.AbstractC1441a<C1758k<?>>() { // from class: com.bumptech.glide.load.engine.j.b.1
            /* renamed from: a */
            public C1758k<?> mo16349b() {
                return new C1758k<>(C1754b.this.f5319a, C1754b.this.f5320b, C1754b.this.f5321c, C1754b.this.f5322d, C1754b.this.f5323e, C1754b.this.f5324f);
            }
        });

        C1754b(ExecutorServiceC1720a executorServiceC1720a, ExecutorServiceC1720a executorServiceC1720a2, ExecutorServiceC1720a executorServiceC1720a3, ExecutorServiceC1720a executorServiceC1720a4, AbstractC1761l abstractC1761l) {
            this.f5319a = executorServiceC1720a;
            this.f5320b = executorServiceC1720a2;
            this.f5321c = executorServiceC1720a3;
            this.f5322d = executorServiceC1720a4;
            this.f5323e = abstractC1761l;
        }

        /* renamed from: a */
        <R> C1758k<R> m16392a(AbstractC1777f abstractC1777f, boolean z, boolean z2, boolean z3, boolean z4) {
            return ((C1758k) C1456i.m16989a(this.f5324f.mo17021a())).m16383a(abstractC1777f, z, z2, z3, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.j$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$c.class */
    public static class C1756c implements RunnableC1734g.AbstractC1739d {

        /* renamed from: a */
        private final AbstractC1697a.AbstractC1698a f5326a;

        /* renamed from: b */
        private volatile AbstractC1697a f5327b;

        C1756c(AbstractC1697a.AbstractC1698a abstractC1698a) {
            this.f5326a = abstractC1698a;
        }

        @Override // com.bumptech.glide.load.engine.RunnableC1734g.AbstractC1739d
        /* renamed from: a */
        public AbstractC1697a mo16390a() {
            if (this.f5327b == null) {
                synchronized (this) {
                    if (this.f5327b == null) {
                        this.f5327b = this.f5326a.mo16505a();
                    }
                    if (this.f5327b == null) {
                        this.f5327b = new C1700b();
                    }
                }
            }
            return this.f5327b;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$d.class */
    public static class C1757d {

        /* renamed from: a */
        private final C1758k<?> f5328a;

        /* renamed from: b */
        private final AbstractC1423f f5329b;

        C1757d(AbstractC1423f abstractC1423f, C1758k<?> c1758k) {
            this.f5329b = abstractC1423f;
            this.f5328a = c1758k;
        }

        /* renamed from: a */
        public void m16389a() {
            this.f5328a.m16380b(this.f5329b);
        }
    }

    C1751j(AbstractC1710h abstractC1710h, AbstractC1697a.AbstractC1698a abstractC1698a, ExecutorServiceC1720a executorServiceC1720a, ExecutorServiceC1720a executorServiceC1720a2, ExecutorServiceC1720a executorServiceC1720a3, ExecutorServiceC1720a executorServiceC1720a4, C1767q c1767q, C1763n c1763n, C1667a c1667a, C1754b c1754b, C1752a c1752a, C1774w c1774w, boolean z) {
        this.f5309d = abstractC1710h;
        this.f5312g = new C1756c(abstractC1698a);
        C1667a c1667a2 = c1667a == null ? new C1667a(z) : c1667a;
        this.f5314i = c1667a2;
        c1667a2.m16595a(this);
        this.f5308c = c1763n == null ? new C1763n() : c1763n;
        this.f5307b = c1767q == null ? new C1767q() : c1767q;
        this.f5310e = c1754b == null ? new C1754b(executorServiceC1720a, executorServiceC1720a2, executorServiceC1720a3, executorServiceC1720a4, this) : c1754b;
        this.f5313h = c1752a == null ? new C1752a(this.f5312g) : c1752a;
        this.f5311f = c1774w == null ? new C1774w() : c1774w;
        abstractC1710h.mo16493a(this);
    }

    public C1751j(AbstractC1710h abstractC1710h, AbstractC1697a.AbstractC1698a abstractC1698a, ExecutorServiceC1720a executorServiceC1720a, ExecutorServiceC1720a executorServiceC1720a2, ExecutorServiceC1720a executorServiceC1720a3, ExecutorServiceC1720a executorServiceC1720a4, boolean z) {
        this(abstractC1710h, abstractC1698a, executorServiceC1720a, executorServiceC1720a2, executorServiceC1720a3, executorServiceC1720a4, null, null, null, null, null, null, z);
    }

    /* renamed from: a */
    private C1764o<?> m16399a(AbstractC1777f abstractC1777f) {
        AbstractC1771t<?> mo16492a = this.f5309d.mo16492a(abstractC1777f);
        return mo16492a == null ? null : mo16492a instanceof C1764o ? (C1764o) mo16492a : new C1764o<>(mo16492a, true, true);
    }

    /* renamed from: a */
    private C1764o<?> m16398a(AbstractC1777f abstractC1777f, boolean z) {
        C1764o<?> c1764o;
        if (!z) {
            c1764o = null;
        } else {
            C1764o<?> m16591b = this.f5314i.m16591b(abstractC1777f);
            c1764o = m16591b;
            if (m16591b != null) {
                m16591b.m16365g();
                c1764o = m16591b;
            }
        }
        return c1764o;
    }

    /* renamed from: a */
    private static void m16397a(String str, long j, AbstractC1777f abstractC1777f) {
        Log.v("Engine", str + " in " + C1452e.m17001a(j) + "ms, key: " + abstractC1777f);
    }

    /* renamed from: b */
    private C1764o<?> m16395b(AbstractC1777f abstractC1777f, boolean z) {
        C1764o<?> c1764o;
        if (!z) {
            c1764o = null;
        } else {
            C1764o<?> m16399a = m16399a(abstractC1777f);
            c1764o = m16399a;
            if (m16399a != null) {
                m16399a.m16365g();
                this.f5314i.m16593a(abstractC1777f, m16399a);
                c1764o = m16399a;
            }
        }
        return c1764o;
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: a */
    public <R> C1757d m16401a(C1391e c1391e, Object obj, AbstractC1777f abstractC1777f, int i, int i2, Class<?> cls, Class<R> cls2, EnumC1428g enumC1428g, AbstractC1745i abstractC1745i, Map<Class<?>, AbstractC1784k<?>> map, boolean z, boolean z2, C1781h c1781h, boolean z3, boolean z4, boolean z5, boolean z6, AbstractC1423f abstractC1423f) {
        C1757d c1757d;
        C1457j.m16984a();
        char m17002a = f5306a ? C1452e.m17002a() : (char) 0;
        C1762m m16369a = this.f5308c.m16369a(obj, abstractC1777f, i, i2, map, cls, cls2, c1781h);
        C1764o<?> m16398a = m16398a(m16369a, z3);
        if (m16398a != null) {
            abstractC1423f.mo17094a(m16398a, EnumC1464a.MEMORY_CACHE);
            if (f5306a) {
                m16397a("Loaded resource from active resources", m17002a, m16369a);
            }
            c1757d = null;
        } else {
            C1764o<?> m16395b = m16395b(m16369a, z3);
            if (m16395b != null) {
                abstractC1423f.mo17094a(m16395b, EnumC1464a.MEMORY_CACHE);
                if (f5306a) {
                    m16397a("Loaded resource from cache", m17002a, m16369a);
                }
                c1757d = null;
            } else {
                C1758k<?> m16360a = this.f5307b.m16360a(m16369a, z6);
                if (m16360a != null) {
                    m16360a.m16387a(abstractC1423f);
                    if (f5306a) {
                        m16397a("Added to existing load", m17002a, m16369a);
                    }
                    c1757d = new C1757d(abstractC1423f, m16360a);
                } else {
                    C1758k<R> m16392a = this.f5310e.m16392a(m16369a, z3, z4, z5, z6);
                    RunnableC1734g<R> m16394a = this.f5313h.m16394a(c1391e, obj, m16369a, abstractC1777f, i, i2, cls, cls2, enumC1428g, abstractC1745i, map, z, z2, z6, c1781h, m16392a);
                    this.f5307b.m16361a((AbstractC1777f) m16369a, (C1758k<?>) m16392a);
                    m16392a.m16387a(abstractC1423f);
                    m16392a.m16379b(m16394a);
                    if (f5306a) {
                        m16397a("Started new load", m17002a, m16369a);
                    }
                    c1757d = new C1757d(abstractC1423f, m16392a);
                }
            }
        }
        return c1757d;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1761l
    /* renamed from: a */
    public void mo16371a(C1758k<?> c1758k, AbstractC1777f abstractC1777f) {
        C1457j.m16984a();
        this.f5307b.m16358b(abstractC1777f, c1758k);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1761l
    /* renamed from: a */
    public void mo16370a(C1758k<?> c1758k, AbstractC1777f abstractC1777f, C1764o<?> c1764o) {
        C1457j.m16984a();
        if (c1764o != null) {
            c1764o.m16367a(abstractC1777f, this);
            if (c1764o.m16366b()) {
                this.f5314i.m16593a(abstractC1777f, c1764o);
            }
        }
        this.f5307b.m16358b(abstractC1777f, c1758k);
    }

    /* renamed from: a */
    public void m16400a(AbstractC1771t<?> abstractC1771t) {
        C1457j.m16984a();
        if (abstractC1771t instanceof C1764o) {
            ((C1764o) abstractC1771t).m16364h();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Override // com.bumptech.glide.load.engine.C1764o.AbstractC1765a
    /* renamed from: a */
    public void mo16363a(AbstractC1777f abstractC1777f, C1764o<?> c1764o) {
        C1457j.m16984a();
        this.f5314i.m16594a(abstractC1777f);
        if (c1764o.m16366b()) {
            this.f5309d.mo16491b(abstractC1777f, c1764o);
        } else {
            this.f5311f.m16342a(c1764o);
        }
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1710h.AbstractC1711a
    /* renamed from: b */
    public void mo16396b(AbstractC1771t<?> abstractC1771t) {
        C1457j.m16984a();
        this.f5311f.m16342a(abstractC1771t);
    }
}
