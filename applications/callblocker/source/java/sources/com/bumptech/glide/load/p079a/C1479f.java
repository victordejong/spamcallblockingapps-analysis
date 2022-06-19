package com.bumptech.glide.load.p079a;

import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.p077h.C1456i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.a.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/f.class */
public class C1479f {

    /* renamed from: b */
    private static final AbstractC1477e.AbstractC1478a<?> f4818b = new AbstractC1477e.AbstractC1478a<Object>() { // from class: com.bumptech.glide.load.a.f.1
        @Override // com.bumptech.glide.load.p079a.AbstractC1477e.AbstractC1478a
        /* renamed from: a */
        public AbstractC1477e<Object> mo16694a(Object obj) {
            return new C1481a(obj);
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1477e.AbstractC1478a
        /* renamed from: a */
        public Class<Object> mo16695a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a */
    private final Map<Class<?>, AbstractC1477e.AbstractC1478a<?>> f4819a = new HashMap();

    /* renamed from: com.bumptech.glide.load.a.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/f$a.class */
    private static final class C1481a implements AbstractC1477e<Object> {

        /* renamed from: a */
        private final Object f4820a;

        C1481a(Object obj) {
            this.f4820a = obj;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1477e
        /* renamed from: a */
        public Object mo16698a() {
            return this.f4820a;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1477e
        /* renamed from: b */
        public void mo16697b() {
        }
    }

    /* renamed from: a */
    public <T> AbstractC1477e<T> m16922a(T t) {
        AbstractC1477e<T> abstractC1477e;
        synchronized (this) {
            C1456i.m16989a(t);
            AbstractC1477e.AbstractC1478a<?> abstractC1478a = this.f4819a.get(t.getClass());
            AbstractC1477e.AbstractC1478a<?> abstractC1478a2 = abstractC1478a;
            if (abstractC1478a == null) {
                Iterator<AbstractC1477e.AbstractC1478a<?>> it = this.f4819a.values().iterator();
                do {
                    abstractC1478a2 = abstractC1478a;
                    if (!it.hasNext()) {
                        break;
                    }
                    abstractC1478a2 = it.next();
                } while (!abstractC1478a2.mo16695a().isAssignableFrom(t.getClass()));
            }
            AbstractC1477e.AbstractC1478a<?> abstractC1478a3 = abstractC1478a2;
            if (abstractC1478a2 == null) {
                abstractC1478a3 = f4818b;
            }
            abstractC1477e = (AbstractC1477e<T>) abstractC1478a3.mo16694a(t);
        }
        return abstractC1477e;
    }

    /* renamed from: a */
    public void m16923a(AbstractC1477e.AbstractC1478a<?> abstractC1478a) {
        synchronized (this) {
            this.f4819a.put(abstractC1478a.mo16695a(), abstractC1478a);
        }
    }
}
