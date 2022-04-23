package com.bumptech.glide.load.resource.e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?, ?>> f7743a = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/f$a.class */
    static final class a<Z, R> {

        /* renamed from: a  reason: collision with root package name */
        final e<Z, R> f7744a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<Z> f7745b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<R> f7746c;

        a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
            this.f7745b = cls;
            this.f7746c = cls2;
            this.f7744a = eVar;
        }

        public final boolean a(Class<?> cls, Class<?> cls2) {
            return this.f7745b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f7746c);
        }
    }

    public final <Z, R> e<Z, R> a(Class<Z> cls, Class<R> cls2) {
        a<?, ?> next;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                return g.a();
            }
            Iterator<a<?, ?>> it2 = this.f7743a.iterator();
            do {
                if (it2.hasNext()) {
                    next = it2.next();
                } else {
                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                }
            } while (!next.a(cls, cls2));
            return (e<Z, R>) next.f7744a;
        }
    }

    public final <Z, R> void a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
        synchronized (this) {
            this.f7743a.add(new a<>(cls, cls2, eVar));
        }
    }

    public final <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (a<?, ?> aVar : this.f7743a) {
                if (aVar.a(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }
}
