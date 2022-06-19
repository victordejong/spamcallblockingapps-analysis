package com.bumptech.glide.load.resource.p126e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.e.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/f.class */
public final class C3926f {

    /* renamed from: a */
    private final List<C3927a<?, ?>> f14355a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.e.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/f$a.class */
    public static final class C3927a<Z, R> {

        /* renamed from: a */
        final AbstractC3925e<Z, R> f14356a;

        /* renamed from: b */
        private final Class<Z> f14357b;

        /* renamed from: c */
        private final Class<R> f14358c;

        C3927a(Class<Z> cls, Class<R> cls2, AbstractC3925e<Z, R> abstractC3925e) {
            this.f14357b = cls;
            this.f14358c = cls2;
            this.f14356a = abstractC3925e;
        }

        /* renamed from: a */
        public final boolean m37191a(Class<?> cls, Class<?> cls2) {
            return this.f14357b.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f14358c);
        }
    }

    /* renamed from: a */
    public final <Z, R> AbstractC3925e<Z, R> m37194a(Class<Z> cls, Class<R> cls2) {
        C3927a<?, ?> next;
        synchronized (this) {
            if (cls2.isAssignableFrom(cls)) {
                return C3928g.m37190a();
            }
            Iterator<C3927a<?, ?>> it2 = this.f14355a.iterator();
            do {
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
                }
                next = it2.next();
            } while (!next.m37191a(cls, cls2));
            return (AbstractC3925e<Z, R>) next.f14356a;
        }
    }

    /* renamed from: a */
    public final <Z, R> void m37193a(Class<Z> cls, Class<R> cls2, AbstractC3925e<Z, R> abstractC3925e) {
        synchronized (this) {
            this.f14355a.add(new C3927a<>(cls, cls2, abstractC3925e));
        }
    }

    /* renamed from: b */
    public final <Z, R> List<Class<R>> m37192b(Class<Z> cls, Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (C3927a<?, ?> c3927a : this.f14355a) {
                if (c3927a.m37191a(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }
}
