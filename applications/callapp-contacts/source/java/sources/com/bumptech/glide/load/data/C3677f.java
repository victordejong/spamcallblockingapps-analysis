package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.p116g.C3643j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.data.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f.class */
public final class C3677f {

    /* renamed from: b */
    private static final AbstractC3675e.AbstractC3676a<?> f13823b = new AbstractC3675e.AbstractC3676a<Object>() { // from class: com.bumptech.glide.load.data.f.1
        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final AbstractC3675e<Object> mo37315a(Object obj) {
            return new C3679a(obj);
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final Class<Object> mo37316a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a */
    private final Map<Class<?>, AbstractC3675e.AbstractC3676a<?>> f13824a = new HashMap();

    /* renamed from: com.bumptech.glide.load.data.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f$a.class */
    static final class C3679a implements AbstractC3675e<Object> {

        /* renamed from: a */
        private final Object f13825a;

        C3679a(Object obj) {
            this.f13825a = obj;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e
        /* renamed from: a */
        public final Object mo37318a() {
            return this.f13825a;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e
        /* renamed from: b */
        public final void mo37317b() {
        }
    }

    /* renamed from: a */
    public final <T> AbstractC3675e<T> m37525a(T t) {
        AbstractC3675e<T> abstractC3675e;
        synchronized (this) {
            C3643j.m37588a(t, "Argument must not be null");
            AbstractC3675e.AbstractC3676a<?> abstractC3676a = this.f13824a.get(t.getClass());
            AbstractC3675e.AbstractC3676a<?> abstractC3676a2 = abstractC3676a;
            if (abstractC3676a == null) {
                Iterator<AbstractC3675e.AbstractC3676a<?>> it2 = this.f13824a.values().iterator();
                do {
                    abstractC3676a2 = abstractC3676a;
                    if (!it2.hasNext()) {
                        break;
                    }
                    abstractC3676a2 = it2.next();
                } while (!abstractC3676a2.mo37316a().isAssignableFrom(t.getClass()));
            }
            AbstractC3675e.AbstractC3676a<?> abstractC3676a3 = abstractC3676a2;
            if (abstractC3676a2 == null) {
                abstractC3676a3 = f13823b;
            }
            abstractC3675e = (AbstractC3675e<T>) abstractC3676a3.mo37315a(t);
        }
        return abstractC3675e;
    }

    /* renamed from: a */
    public final void m37526a(AbstractC3675e.AbstractC3676a<?> abstractC3676a) {
        synchronized (this) {
            this.f13824a.put(abstractC3676a.mo37316a(), abstractC3676a);
        }
    }
}
