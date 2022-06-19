package com.bumptech.glide.load.engine;

import com.bumptech.glide.C0706d;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC0728a;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.load.engine.p021y.AbstractC0775a;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j.c;
import com.bumptech.glide.load.p023i.AbstractC0800n;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/f.class */
final class C0755f<Transcode> {

    /* renamed from: a */
    private final List<AbstractC0800n.C0801a<?>> f3564a = new ArrayList();

    /* renamed from: b */
    private final List<AbstractC0732c> f3565b = new ArrayList();

    /* renamed from: c */
    private C0706d f3566c;

    /* renamed from: d */
    private Object f3567d;

    /* renamed from: e */
    private int f3568e;

    /* renamed from: f */
    private int f3569f;

    /* renamed from: g */
    private Class<?> f3570g;

    /* renamed from: h */
    private DecodeJob$e f3571h;

    /* renamed from: i */
    private e f3572i;

    /* renamed from: j */
    private Map<Class<?>, h<?>> f3573j;

    /* renamed from: k */
    private Class<Transcode> f3574k;

    /* renamed from: l */
    private boolean f3575l;

    /* renamed from: m */
    private boolean f3576m;

    /* renamed from: n */
    private AbstractC0732c f3577n;

    /* renamed from: o */
    private Priority f3578o;

    /* renamed from: p */
    private AbstractC0758h f3579p;

    /* renamed from: q */
    private boolean f3580q;

    /* renamed from: r */
    private boolean f3581r;

    C0755f() {
    }

    /* renamed from: a */
    void m11132a() {
        this.f3566c = null;
        this.f3567d = null;
        this.f3577n = null;
        this.f3570g = null;
        this.f3574k = null;
        this.f3572i = null;
        this.f3578o = null;
        this.f3573j = null;
        this.f3579p = null;
        this.f3564a.clear();
        this.f3575l = false;
        this.f3565b.clear();
        this.f3576m = false;
    }

    /* renamed from: b */
    AbstractC0768b m11131b() {
        return this.f3566c.m11324b();
    }

    /* renamed from: c */
    List<AbstractC0732c> m11130c() {
        if (!this.f3576m) {
            this.f3576m = true;
            this.f3565b.clear();
            List<AbstractC0800n.C0801a<?>> m11126g = m11126g();
            int size = m11126g.size();
            for (int i = 0; i < size; i++) {
                AbstractC0800n.C0801a<?> c0801a = m11126g.get(i);
                if (!this.f3565b.contains(c0801a.f3671a)) {
                    this.f3565b.add(c0801a.f3671a);
                }
                for (int i2 = 0; i2 < c0801a.f3672b.size(); i2++) {
                    if (!this.f3565b.contains(c0801a.f3672b.get(i2))) {
                        this.f3565b.add(c0801a.f3672b.get(i2));
                    }
                }
            }
        }
        return this.f3565b;
    }

    /* renamed from: d */
    AbstractC0775a m11129d() {
        return this.f3571h.m11156a();
    }

    /* renamed from: e */
    AbstractC0758h m11128e() {
        return this.f3579p;
    }

    /* renamed from: f */
    int m11127f() {
        return this.f3569f;
    }

    /* renamed from: g */
    List<AbstractC0800n.C0801a<?>> m11126g() {
        if (!this.f3575l) {
            this.f3575l = true;
            this.f3564a.clear();
            List m11360i = this.f3566c.m11317i().m11360i(this.f3567d);
            int size = m11360i.size();
            for (int i = 0; i < size; i++) {
                AbstractC0800n.C0801a<?> m10981a = ((AbstractC0800n) m11360i.get(i)).m10981a(this.f3567d, this.f3568e, this.f3569f, this.f3572i);
                if (m10981a != null) {
                    this.f3564a.add(m10981a);
                }
            }
        }
        return this.f3564a;
    }

    /* renamed from: h */
    <Data> C0763q<Data, ?, Transcode> m11125h(Class<Data> cls) {
        return this.f3566c.m11317i().m11361h(cls, this.f3570g, this.f3574k);
    }

    /* renamed from: i */
    Class<?> m11124i() {
        return this.f3567d.getClass();
    }

    /* renamed from: j */
    List<AbstractC0800n<File, ?>> m11123j(File file) {
        return this.f3566c.m11317i().m11360i(file);
    }

    /* renamed from: k */
    e m11122k() {
        return this.f3572i;
    }

    /* renamed from: l */
    Priority m11121l() {
        return this.f3578o;
    }

    /* renamed from: m */
    List<Class<?>> m11120m() {
        return this.f3566c.m11317i().m11359j(this.f3567d.getClass(), this.f3570g, this.f3574k);
    }

    /* renamed from: n */
    <Z> g<Z> m11119n(AbstractC0764s<Z> abstractC0764s) {
        return this.f3566c.m11317i().m11358k(abstractC0764s);
    }

    /* renamed from: o */
    AbstractC0732c m11118o() {
        return this.f3577n;
    }

    /* renamed from: p */
    <X> AbstractC0728a<X> m11117p(X x) {
        return this.f3566c.m11317i().m11356m(x);
    }

    /* renamed from: q */
    Class<?> m11116q() {
        return (Class<Transcode>) this.f3574k;
    }

    /* renamed from: r */
    <Z> h<Z> m11115r(Class<Z> cls) {
        h<?> hVar = this.f3573j.get(cls);
        h<?> hVar2 = hVar;
        if (hVar == null) {
            Iterator<Map.Entry<Class<?>, h<?>>> it = this.f3573j.entrySet().iterator();
            while (true) {
                hVar2 = hVar;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, h<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    hVar2 = next.getValue();
                    break;
                }
            }
        }
        if (hVar2 == null) {
            if (!this.f3573j.isEmpty() || !this.f3580q) {
                return c.c();
            }
            throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        }
        return (h<Z>) hVar2;
    }

    /* renamed from: s */
    int m11114s() {
        return this.f3568e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    boolean m11113t(Class<?> cls) {
        return m11125h(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    <R> void m11112u(C0706d c0706d, Object obj, AbstractC0732c abstractC0732c, int i, int i2, AbstractC0758h abstractC0758h, Class<?> cls, Class<R> cls2, Priority priority, e eVar, Map<Class<?>, h<?>> map, boolean z, boolean z2, DecodeJob$e decodeJob$e) {
        this.f3566c = c0706d;
        this.f3567d = obj;
        this.f3577n = abstractC0732c;
        this.f3568e = i;
        this.f3569f = i2;
        this.f3579p = abstractC0758h;
        this.f3570g = cls;
        this.f3571h = decodeJob$e;
        this.f3574k = cls2;
        this.f3578o = priority;
        this.f3572i = eVar;
        this.f3573j = map;
        this.f3580q = z;
        this.f3581r = z2;
    }

    /* renamed from: v */
    boolean m11111v(AbstractC0764s<?> abstractC0764s) {
        return this.f3566c.m11317i().m11355n(abstractC0764s);
    }

    /* renamed from: w */
    boolean m11110w() {
        return this.f3581r;
    }

    /* renamed from: x */
    boolean m11109x(AbstractC0732c abstractC0732c) {
        List<AbstractC0800n.C0801a<?>> m11126g = m11126g();
        int size = m11126g.size();
        for (int i = 0; i < size; i++) {
            if (m11126g.get(i).f3671a.equals(abstractC0732c)) {
                return true;
            }
        }
        return false;
    }
}
