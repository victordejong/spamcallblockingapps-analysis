package com.bumptech.glide.load.p024j.p027h;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.load.j.h.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/f.class */
public class C0817f {

    /* renamed from: a */
    private final List<C0818a<?, ?>> f3719a = new ArrayList();

    /* renamed from: com.bumptech.glide.load.j.h.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/f$a.class */
    private static final class C0818a<Z, R> {

        /* renamed from: a */
        private final Class<Z> f3720a;

        /* renamed from: b */
        private final Class<R> f3721b;

        /* renamed from: c */
        final AbstractC0816e<Z, R> f3722c;

        C0818a(Class<Z> cls, Class<R> cls2, AbstractC0816e<Z, R> eVar) {
            this.f3720a = cls;
            this.f3721b = cls2;
            this.f3722c = eVar;
        }

        /* renamed from: a */
        public boolean m10926a(Class<?> cls, Class<?> cls2) {
            return this.f3720a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f3721b);
        }
    }

    /* renamed from: a */
    public <Z, R> AbstractC0816e<Z, R> m10929a(Class<Z> cls, Class<R> cls2) {
        C0818a<?, ?> next;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                return g.b();
            }
            Iterator<C0818a<?, ?>> it = this.f3719a.iterator();
            do {
                if (it.hasNext()) {
                    next = it.next();
                } else {
                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                }
            } while (!next.m10926a(cls, cls2));
            return (AbstractC0816e<Z, R>) next.f3722c;
        }
    }

    /* renamed from: b */
    public <Z, R> List<Class<R>> m10928b(Class<Z> cls, Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (C0818a<?, ?> aVar : this.f3719a) {
                if (aVar.m10926a(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: c */
    public <Z, R> void m10927c(Class<Z> cls, Class<R> cls2, AbstractC0816e<Z, R> eVar) {
        synchronized (this) {
            this.f3719a.add(new C0818a<>(cls, cls2, eVar));
        }
    }
}
