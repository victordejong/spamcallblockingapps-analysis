package com.bumptech.glide.p028m;

import com.bumptech.glide.load.engine.C0756g;
import com.bumptech.glide.load.engine.C0763q;
import com.bumptech.glide.load.j.h.g;
import com.bumptech.glide.p029o.C0855i;
import d.e.a;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.m.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/c.class */
public class C0829c {

    /* renamed from: c */
    private static final C0763q<?, ?, ?> f3775c = new C0763q<>(Object.class, Object.class, Object.class, Collections.singletonList(new C0756g(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: a */
    private final a<C0855i, C0763q<?, ?, ?>> f3776a = new a<>();

    /* renamed from: b */
    private final AtomicReference<C0855i> f3777b = new AtomicReference<>();

    /* renamed from: b */
    private C0855i m10845b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C0855i andSet = this.f3777b.getAndSet(null);
        C0855i iVar = andSet;
        if (andSet == null) {
            iVar = new C0855i();
        }
        iVar.m10763a(cls, cls2, cls3);
        return iVar;
    }

    /* renamed from: a */
    public <Data, TResource, Transcode> C0763q<Data, TResource, Transcode> m10846a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C0763q<Data, TResource, Transcode> qVar;
        C0855i b = m10845b(cls, cls2, cls3);
        synchronized (this.f3776a) {
            qVar = (C0763q) this.f3776a.get(b);
        }
        this.f3777b.set(b);
        return qVar;
    }

    /* renamed from: c */
    public boolean m10844c(C0763q<?, ?, ?> qVar) {
        return f3775c.equals(qVar);
    }

    /* renamed from: d */
    public void m10843d(Class<?> cls, Class<?> cls2, Class<?> cls3, C0763q<?, ?, ?> qVar) {
        synchronized (this.f3776a) {
            a<C0855i, C0763q<?, ?, ?>> aVar = this.f3776a;
            C0855i iVar = new C0855i(cls, cls2, cls3);
            if (qVar == null) {
                qVar = f3775c;
            }
            aVar.put(iVar, qVar);
        }
    }
}
