package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.p223p.C4382j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.data.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f.class */
public class C4011f {

    /* renamed from: a */
    private static final AbstractC4009e.AbstractC4010a<?> f12648a = new C4012a();

    /* renamed from: b */
    private final Map<Class<?>, AbstractC4009e.AbstractC4010a<?>> f12649b = new HashMap();

    /* renamed from: com.bumptech.glide.load.data.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f$a.class */
    class C4012a implements AbstractC4009e.AbstractC4010a<Object> {
        C4012a() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4009e.AbstractC4010a
        /* renamed from: a */
        public Class<Object> mo23071a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.AbstractC4009e.AbstractC4010a
        /* renamed from: b */
        public AbstractC4009e<Object> mo23070b(Object obj) {
            return new C4013b(obj);
        }
    }

    /* renamed from: com.bumptech.glide.load.data.f$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f$b.class */
    private static final class C4013b implements AbstractC4009e<Object> {

        /* renamed from: a */
        private final Object f12650a;

        C4013b(Object obj) {
            this.f12650a = obj;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4009e
        /* renamed from: a */
        public Object mo23074a() {
            return this.f12650a;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4009e
        /* renamed from: b */
        public void mo23073b() {
        }
    }

    /* renamed from: a */
    public <T> AbstractC4009e<T> m23500a(T t) {
        AbstractC4009e<T> abstractC4009e;
        synchronized (this) {
            C4382j.m22719d(t);
            AbstractC4009e.AbstractC4010a<?> abstractC4010a = this.f12649b.get(t.getClass());
            AbstractC4009e.AbstractC4010a<?> abstractC4010a2 = abstractC4010a;
            if (abstractC4010a == null) {
                Iterator<AbstractC4009e.AbstractC4010a<?>> it = this.f12649b.values().iterator();
                do {
                    abstractC4010a2 = abstractC4010a;
                    if (!it.hasNext()) {
                        break;
                    }
                    abstractC4010a2 = it.next();
                } while (!abstractC4010a2.mo23071a().isAssignableFrom(t.getClass()));
            }
            AbstractC4009e.AbstractC4010a<?> abstractC4010a3 = abstractC4010a2;
            if (abstractC4010a2 == null) {
                abstractC4010a3 = f12648a;
            }
            abstractC4009e = (AbstractC4009e<T>) abstractC4010a3.mo23070b(t);
        }
        return abstractC4009e;
    }

    /* renamed from: b */
    public void m23499b(AbstractC4009e.AbstractC4010a<?> abstractC4010a) {
        synchronized (this) {
            this.f12649b.put(abstractC4010a.mo23071a(), abstractC4010a);
        }
    }
}
