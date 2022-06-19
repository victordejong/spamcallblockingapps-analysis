package com.bumptech.glide.load.engine;

import com.bumptech.glide.C1391e;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.RunnableC1734g;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p083c.C1628b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/f.class */
public final class C1733f<Transcode> {

    /* renamed from: a */
    private final List<AbstractC1546n.C1547a<?>> f5225a = new ArrayList();

    /* renamed from: b */
    private final List<AbstractC1777f> f5226b = new ArrayList();

    /* renamed from: c */
    private C1391e f5227c;

    /* renamed from: d */
    private Object f5228d;

    /* renamed from: e */
    private int f5229e;

    /* renamed from: f */
    private int f5230f;

    /* renamed from: g */
    private Class<?> f5231g;

    /* renamed from: h */
    private RunnableC1734g.AbstractC1739d f5232h;

    /* renamed from: i */
    private C1781h f5233i;

    /* renamed from: j */
    private Map<Class<?>, AbstractC1784k<?>> f5234j;

    /* renamed from: k */
    private Class<Transcode> f5235k;

    /* renamed from: l */
    private boolean f5236l;

    /* renamed from: m */
    private boolean f5237m;

    /* renamed from: n */
    private AbstractC1777f f5238n;

    /* renamed from: o */
    private EnumC1428g f5239o;

    /* renamed from: p */
    private AbstractC1745i f5240p;

    /* renamed from: q */
    private boolean f5241q;

    /* renamed from: r */
    private boolean f5242r;

    /* renamed from: a */
    public <X> AbstractC1664d<X> m16460a(X x) {
        return this.f5227c.m17223c().m17415a((Registry) x);
    }

    /* renamed from: a */
    public List<AbstractC1546n<File, ?>> m16462a(File file) {
        return this.f5227c.m17223c().m17408c(file);
    }

    /* renamed from: a */
    public void m16466a() {
        this.f5227c = null;
        this.f5228d = null;
        this.f5238n = null;
        this.f5231g = null;
        this.f5235k = null;
        this.f5233i = null;
        this.f5239o = null;
        this.f5234j = null;
        this.f5240p = null;
        this.f5225a.clear();
        this.f5236l = false;
        this.f5226b.clear();
        this.f5237m = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <R> void m16465a(C1391e c1391e, Object obj, AbstractC1777f abstractC1777f, int i, int i2, AbstractC1745i abstractC1745i, Class<?> cls, Class<R> cls2, EnumC1428g enumC1428g, C1781h c1781h, Map<Class<?>, AbstractC1784k<?>> map, boolean z, boolean z2, RunnableC1734g.AbstractC1739d abstractC1739d) {
        this.f5227c = c1391e;
        this.f5228d = obj;
        this.f5238n = abstractC1777f;
        this.f5229e = i;
        this.f5230f = i2;
        this.f5240p = abstractC1745i;
        this.f5231g = cls;
        this.f5232h = abstractC1739d;
        this.f5235k = cls2;
        this.f5239o = enumC1428g;
        this.f5233i = c1781h;
        this.f5234j = map;
        this.f5241q = z;
        this.f5242r = z2;
    }

    /* renamed from: a */
    public boolean m16464a(AbstractC1771t<?> abstractC1771t) {
        return this.f5227c.m17223c().m17422a(abstractC1771t);
    }

    /* renamed from: a */
    public boolean m16463a(AbstractC1777f abstractC1777f) {
        boolean z;
        List<AbstractC1546n.C1547a<?>> m16445m = m16445m();
        int size = m16445m.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            } else if (m16445m.get(i).f4903a.equals(abstractC1777f)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public boolean m16461a(Class<?> cls) {
        return m16457b(cls) != null;
    }

    /* renamed from: b */
    public AbstractC1697a m16459b() {
        return this.f5232h.mo16390a();
    }

    /* renamed from: b */
    public <Data> C1768r<Data, ?, Transcode> m16457b(Class<Data> cls) {
        return this.f5227c.m17223c().m17416a(cls, this.f5231g, this.f5235k);
    }

    /* renamed from: b */
    public <Z> AbstractC1783j<Z> m16458b(AbstractC1771t<Z> abstractC1771t) {
        return this.f5227c.m17223c().m17412b((AbstractC1771t) abstractC1771t);
    }

    /* renamed from: c */
    public AbstractC1745i m16456c() {
        return this.f5240p;
    }

    /* renamed from: c */
    public <Z> AbstractC1784k<Z> m16455c(Class<Z> cls) {
        AbstractC1784k<?> abstractC1784k = this.f5234j.get(cls);
        AbstractC1784k<?> abstractC1784k2 = abstractC1784k;
        if (abstractC1784k == null) {
            Iterator<Map.Entry<Class<?>, AbstractC1784k<?>>> it = this.f5234j.entrySet().iterator();
            while (true) {
                abstractC1784k2 = abstractC1784k;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC1784k<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC1784k2 = next.getValue();
                    break;
                }
            }
        }
        C1628b c1628b = abstractC1784k2;
        if (abstractC1784k2 == null) {
            if (this.f5234j.isEmpty() && this.f5241q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            c1628b = C1628b.m16699a();
        }
        return (AbstractC1784k<Z>) c1628b;
    }

    /* renamed from: d */
    public EnumC1428g m16454d() {
        return this.f5239o;
    }

    /* renamed from: e */
    public C1781h m16453e() {
        return this.f5233i;
    }

    /* renamed from: f */
    public AbstractC1777f m16452f() {
        return this.f5238n;
    }

    /* renamed from: g */
    public int m16451g() {
        return this.f5229e;
    }

    /* renamed from: h */
    public int m16450h() {
        return this.f5230f;
    }

    /* renamed from: i */
    public AbstractC1673b m16449i() {
        return this.f5227c.m17221e();
    }

    /* renamed from: j */
    public Class<?> m16448j() {
        return (Class<Transcode>) this.f5235k;
    }

    /* renamed from: k */
    public List<Class<?>> m16447k() {
        return this.f5227c.m17223c().m17411b(this.f5228d.getClass(), this.f5231g, this.f5235k);
    }

    /* renamed from: l */
    public boolean m16446l() {
        return this.f5242r;
    }

    /* renamed from: m */
    public List<AbstractC1546n.C1547a<?>> m16445m() {
        if (!this.f5236l) {
            this.f5236l = true;
            this.f5225a.clear();
            List m17408c = this.f5227c.m17223c().m17408c(this.f5228d);
            int size = m17408c.size();
            for (int i = 0; i < size; i++) {
                AbstractC1546n.C1547a<?> mo16802a = ((AbstractC1546n) m17408c.get(i)).mo16802a(this.f5228d, this.f5229e, this.f5230f, this.f5233i);
                if (mo16802a != null) {
                    this.f5225a.add(mo16802a);
                }
            }
        }
        return this.f5225a;
    }

    /* renamed from: n */
    public List<AbstractC1777f> m16444n() {
        if (!this.f5237m) {
            this.f5237m = true;
            this.f5226b.clear();
            List<AbstractC1546n.C1547a<?>> m16445m = m16445m();
            int size = m16445m.size();
            for (int i = 0; i < size; i++) {
                AbstractC1546n.C1547a<?> c1547a = m16445m.get(i);
                if (!this.f5226b.contains(c1547a.f4903a)) {
                    this.f5226b.add(c1547a.f4903a);
                }
                for (int i2 = 0; i2 < c1547a.f4904b.size(); i2++) {
                    if (!this.f5226b.contains(c1547a.f4904b.get(i2))) {
                        this.f5226b.add(c1547a.f4904b.get(i2));
                    }
                }
            }
        }
        return this.f5226b;
    }
}
