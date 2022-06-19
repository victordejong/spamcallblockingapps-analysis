package com.bumptech.glide.load.engine;

import com.bumptech.glide.C3965e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p214j.C4240c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/f.class */
public final class C4051f<Transcode> {

    /* renamed from: a */
    private final List<AbstractC4191n.C4192a<?>> f12767a = new ArrayList();

    /* renamed from: b */
    private final List<AbstractC3999c> f12768b = new ArrayList();

    /* renamed from: c */
    private C3965e f12769c;

    /* renamed from: d */
    private Object f12770d;

    /* renamed from: e */
    private int f12771e;

    /* renamed from: f */
    private int f12772f;

    /* renamed from: g */
    private Class<?> f12773g;

    /* renamed from: h */
    private DecodeJob.AbstractC4037e f12774h;

    /* renamed from: i */
    private C4032e f12775i;

    /* renamed from: j */
    private Map<Class<?>, AbstractC4148h<?>> f12776j;

    /* renamed from: k */
    private Class<Transcode> f12777k;

    /* renamed from: l */
    private boolean f12778l;

    /* renamed from: m */
    private boolean f12779m;

    /* renamed from: n */
    private AbstractC3999c f12780n;

    /* renamed from: o */
    private Priority f12781o;

    /* renamed from: p */
    private AbstractC4054h f12782p;

    /* renamed from: q */
    private boolean f12783q;

    /* renamed from: r */
    private boolean f12784r;

    /* renamed from: a */
    public void m23404a() {
        this.f12769c = null;
        this.f12770d = null;
        this.f12780n = null;
        this.f12773g = null;
        this.f12777k = null;
        this.f12775i = null;
        this.f12781o = null;
        this.f12776j = null;
        this.f12782p = null;
        this.f12767a.clear();
        this.f12778l = false;
        this.f12768b.clear();
        this.f12779m = false;
    }

    /* renamed from: b */
    public AbstractC4091b m23403b() {
        return this.f12769c.m23671b();
    }

    /* renamed from: c */
    public List<AbstractC3999c> m23402c() {
        if (!this.f12779m) {
            this.f12779m = true;
            this.f12768b.clear();
            List<AbstractC4191n.C4192a<?>> m23398g = m23398g();
            int size = m23398g.size();
            for (int i = 0; i < size; i++) {
                AbstractC4191n.C4192a<?> c4192a = m23398g.get(i);
                if (!this.f12768b.contains(c4192a.f13059a)) {
                    this.f12768b.add(c4192a.f13059a);
                }
                for (int i2 = 0; i2 < c4192a.f13060b.size(); i2++) {
                    if (!this.f12768b.contains(c4192a.f13060b.get(i2))) {
                        this.f12768b.add(c4192a.f13060b.get(i2));
                    }
                }
            }
        }
        return this.f12768b;
    }

    /* renamed from: d */
    public AbstractC4114a m23401d() {
        return this.f12774h.mo23360a();
    }

    /* renamed from: e */
    public AbstractC4054h m23400e() {
        return this.f12782p;
    }

    /* renamed from: f */
    public int m23399f() {
        return this.f12772f;
    }

    /* renamed from: g */
    public List<AbstractC4191n.C4192a<?>> m23398g() {
        if (!this.f12778l) {
            this.f12778l = true;
            this.f12767a.clear();
            List m23709i = this.f12769c.m23664i().m23709i(this.f12770d);
            int size = m23709i.size();
            for (int i = 0; i < size; i++) {
                AbstractC4191n.C4192a<?> mo23081b = ((AbstractC4191n) m23709i.get(i)).mo23081b(this.f12770d, this.f12771e, this.f12772f, this.f12775i);
                if (mo23081b != null) {
                    this.f12767a.add(mo23081b);
                }
            }
        }
        return this.f12767a;
    }

    /* renamed from: h */
    public <Data> C4080q<Data, ?, Transcode> m23397h(Class<Data> cls) {
        return this.f12769c.m23664i().m23710h(cls, this.f12773g, this.f12777k);
    }

    /* renamed from: i */
    public Class<?> m23396i() {
        return this.f12770d.getClass();
    }

    /* renamed from: j */
    public List<AbstractC4191n<File, ?>> m23395j(File file) {
        return this.f12769c.m23664i().m23709i(file);
    }

    /* renamed from: k */
    public C4032e m23394k() {
        return this.f12775i;
    }

    /* renamed from: l */
    public Priority m23393l() {
        return this.f12781o;
    }

    /* renamed from: m */
    public List<Class<?>> m23392m() {
        return this.f12769c.m23664i().m23708j(this.f12770d.getClass(), this.f12773g, this.f12777k);
    }

    /* renamed from: n */
    public <Z> AbstractC4147g<Z> m23391n(AbstractC4083s<Z> abstractC4083s) {
        return this.f12769c.m23664i().m23707k(abstractC4083s);
    }

    /* renamed from: o */
    public AbstractC3999c m23390o() {
        return this.f12780n;
    }

    /* renamed from: p */
    public <X> AbstractC3990a<X> m23389p(X x) {
        return this.f12769c.m23664i().m23705m(x);
    }

    /* renamed from: q */
    public Class<?> m23388q() {
        return (Class<Transcode>) this.f12777k;
    }

    /* renamed from: r */
    public <Z> AbstractC4148h<Z> m23387r(Class<Z> cls) {
        AbstractC4148h<?> abstractC4148h = this.f12776j.get(cls);
        AbstractC4148h<?> abstractC4148h2 = abstractC4148h;
        if (abstractC4148h == null) {
            Iterator<Map.Entry<Class<?>, AbstractC4148h<?>>> it = this.f12776j.entrySet().iterator();
            while (true) {
                abstractC4148h2 = abstractC4148h;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC4148h<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC4148h2 = next.getValue();
                    break;
                }
            }
        }
        if (abstractC4148h2 == null) {
            if (!this.f12776j.isEmpty() || !this.f12783q) {
                return C4240c.m23075c();
            }
            throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        }
        return (AbstractC4148h<Z>) abstractC4148h2;
    }

    /* renamed from: s */
    public int m23386s() {
        return this.f12771e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public boolean m23385t(Class<?> cls) {
        return m23397h(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    public <R> void m23384u(C3965e c3965e, Object obj, AbstractC3999c abstractC3999c, int i, int i2, AbstractC4054h abstractC4054h, Class<?> cls, Class<R> cls2, Priority priority, C4032e c4032e, Map<Class<?>, AbstractC4148h<?>> map, boolean z, boolean z2, DecodeJob.AbstractC4037e abstractC4037e) {
        this.f12769c = c3965e;
        this.f12770d = obj;
        this.f12780n = abstractC3999c;
        this.f12771e = i;
        this.f12772f = i2;
        this.f12782p = abstractC4054h;
        this.f12773g = cls;
        this.f12774h = abstractC4037e;
        this.f12777k = cls2;
        this.f12781o = priority;
        this.f12775i = c4032e;
        this.f12776j = map;
        this.f12783q = z;
        this.f12784r = z2;
    }

    /* renamed from: v */
    public boolean m23383v(AbstractC4083s<?> abstractC4083s) {
        return this.f12769c.m23664i().m23704n(abstractC4083s);
    }

    /* renamed from: w */
    public boolean m23382w() {
        return this.f12784r;
    }

    /* renamed from: x */
    public boolean m23381x(AbstractC3999c abstractC3999c) {
        List<AbstractC4191n.C4192a<?>> m23398g = m23398g();
        int size = m23398g.size();
        for (int i = 0; i < size; i++) {
            if (m23398g.get(i).f13059a.equals(abstractC3999c)) {
                return true;
            }
        }
        return false;
    }
}
