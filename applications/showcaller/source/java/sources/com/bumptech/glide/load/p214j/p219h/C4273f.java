package com.bumptech.glide.load.p214j.p219h;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.load.j.h.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/f.class */
public class C4273f {

    /* renamed from: a */
    private final List<C4274a<?, ?>> f13202a = new ArrayList();

    /* renamed from: com.bumptech.glide.load.j.h.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/h/f$a.class */
    public static final class C4274a<Z, R> {

        /* renamed from: a */
        private final Class<Z> f13203a;

        /* renamed from: b */
        private final Class<R> f13204b;

        /* renamed from: c */
        final AbstractC4272e<Z, R> f13205c;

        C4274a(Class<Z> cls, Class<R> cls2, AbstractC4272e<Z, R> abstractC4272e) {
            this.f13203a = cls;
            this.f13204b = cls2;
            this.f13205c = abstractC4272e;
        }

        /* renamed from: a */
        public boolean m22990a(Class<?> cls, Class<?> cls2) {
            return this.f13203a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f13204b);
        }
    }

    /* renamed from: a */
    public <Z, R> AbstractC4272e<Z, R> m22993a(Class<Z> cls, Class<R> cls2) {
        C4274a<?, ?> next;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                return C4275g.m22988b();
            }
            Iterator<C4274a<?, ?>> it = this.f13202a.iterator();
            do {
                if (!it.hasNext()) {
                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                }
                next = it.next();
            } while (!next.m22990a(cls, cls2));
            return (AbstractC4272e<Z, R>) next.f13205c;
        }
    }

    /* renamed from: b */
    public <Z, R> List<Class<R>> m22992b(Class<Z> cls, Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (C4274a<?, ?> c4274a : this.f13202a) {
                if (c4274a.m22990a(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: c */
    public <Z, R> void m22991c(Class<Z> cls, Class<R> cls2, AbstractC4272e<Z, R> abstractC4272e) {
        synchronized (this) {
            this.f13202a.add(new C4274a<>(cls, cls2, abstractC4272e));
        }
    }
}
