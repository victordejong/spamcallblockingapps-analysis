package com.bumptech.glide.load.p083c.p089f;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.load.c.f.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f/f.class */
public class C1661f {

    /* renamed from: a */
    private final List<C1662a<?, ?>> f5089a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.c.f.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/f/f$a.class */
    public static final class C1662a<Z, R> {

        /* renamed from: a */
        final AbstractC1660e<Z, R> f5090a;

        /* renamed from: b */
        private final Class<Z> f5091b;

        /* renamed from: c */
        private final Class<R> f5092c;

        C1662a(Class<Z> cls, Class<R> cls2, AbstractC1660e<Z, R> abstractC1660e) {
            this.f5091b = cls;
            this.f5092c = cls2;
            this.f5090a = abstractC1660e;
        }

        /* renamed from: a */
        public boolean m16615a(Class<?> cls, Class<?> cls2) {
            return this.f5091b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f5092c);
        }
    }

    /* renamed from: a */
    public <Z, R> AbstractC1660e<Z, R> m16618a(Class<Z> cls, Class<R> cls2) {
        C1662a<?, ?> next;
        AbstractC1660e<?, ?> abstractC1660e;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                abstractC1660e = C1663g.m16614a();
            } else {
                Iterator<C1662a<?, ?>> it = this.f5089a.iterator();
                do {
                    if (!it.hasNext()) {
                        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                    }
                    next = it.next();
                } while (!next.m16615a(cls, cls2));
                abstractC1660e = next.f5090a;
            }
        }
        return (AbstractC1660e<Z, R>) abstractC1660e;
    }

    /* renamed from: a */
    public <Z, R> void m16617a(Class<Z> cls, Class<R> cls2, AbstractC1660e<Z, R> abstractC1660e) {
        synchronized (this) {
            this.f5089a.add(new C1662a<>(cls, cls2, abstractC1660e));
        }
    }

    /* renamed from: b */
    public <Z, R> List<Class<R>> m16616b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
            } else {
                for (C1662a<?, ?> c1662a : this.f5089a) {
                    if (c1662a.m16615a(cls, cls2)) {
                        arrayList.add(cls2);
                    }
                }
            }
        }
        return arrayList;
    }
}
