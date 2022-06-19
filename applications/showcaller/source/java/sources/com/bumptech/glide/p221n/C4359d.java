package com.bumptech.glide.p221n;

import com.bumptech.glide.p223p.C4381i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p020b.p036e.C1489a;
/* renamed from: com.bumptech.glide.n.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/d.class */
public class C4359d {

    /* renamed from: a */
    private final AtomicReference<C4381i> f13351a = new AtomicReference<>();

    /* renamed from: b */
    private final C1489a<C4381i, List<Class<?>>> f13352b = new C1489a<>();

    /* renamed from: a */
    public List<Class<?>> m22772a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C4381i c4381i;
        List<Class<?>> list;
        C4381i andSet = this.f13351a.getAndSet(null);
        if (andSet == null) {
            c4381i = new C4381i(cls, cls2, cls3);
        } else {
            andSet.m22723a(cls, cls2, cls3);
            c4381i = andSet;
        }
        synchronized (this.f13352b) {
            list = this.f13352b.get(c4381i);
        }
        this.f13351a.set(c4381i);
        return list;
    }

    /* renamed from: b */
    public void m22771b(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f13352b) {
            this.f13352b.put(new C4381i(cls, cls2, cls3), list);
        }
    }
}
