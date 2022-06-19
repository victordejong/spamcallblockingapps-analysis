package com.bumptech.glide.p221n;

import com.bumptech.glide.load.engine.C4052g;
import com.bumptech.glide.load.engine.C4080q;
import com.bumptech.glide.load.p214j.p219h.C4275g;
import com.bumptech.glide.p223p.C4381i;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p020b.p036e.C1489a;
/* renamed from: com.bumptech.glide.n.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/c.class */
public class C4358c {

    /* renamed from: a */
    private static final C4080q<?, ?, ?> f13348a = new C4080q<>(Object.class, Object.class, Object.class, Collections.singletonList(new C4052g(Object.class, Object.class, Object.class, Collections.emptyList(), new C4275g(), null)), null);

    /* renamed from: b */
    private final C1489a<C4381i, C4080q<?, ?, ?>> f13349b = new C1489a<>();

    /* renamed from: c */
    private final AtomicReference<C4381i> f13350c = new AtomicReference<>();

    /* renamed from: b */
    private C4381i m22775b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C4381i andSet = this.f13350c.getAndSet(null);
        C4381i c4381i = andSet;
        if (andSet == null) {
            c4381i = new C4381i();
        }
        c4381i.m22723a(cls, cls2, cls3);
        return c4381i;
    }

    /* renamed from: a */
    public <Data, TResource, Transcode> C4080q<Data, TResource, Transcode> m22776a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C4080q<Data, TResource, Transcode> c4080q;
        C4381i m22775b = m22775b(cls, cls2, cls3);
        synchronized (this.f13349b) {
            c4080q = (C4080q<Data, TResource, Transcode>) this.f13349b.get(m22775b);
        }
        this.f13350c.set(m22775b);
        return c4080q;
    }

    /* renamed from: c */
    public boolean m22774c(C4080q<?, ?, ?> c4080q) {
        return f13348a.equals(c4080q);
    }

    /* renamed from: d */
    public void m22773d(Class<?> cls, Class<?> cls2, Class<?> cls3, C4080q<?, ?, ?> c4080q) {
        synchronized (this.f13349b) {
            C1489a<C4381i, C4080q<?, ?, ?>> c1489a = this.f13349b;
            C4381i c4381i = new C4381i(cls, cls2, cls3);
            if (c4080q == null) {
                c4080q = f13348a;
            }
            c1489a.put(c4381i, c4080q);
        }
    }
}
