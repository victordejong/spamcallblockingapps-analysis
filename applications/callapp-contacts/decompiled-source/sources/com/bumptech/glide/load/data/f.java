package com.bumptech.glide.load.data;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.data.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f.class */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final e.a<?> f7401b = new e.a<Object>() { // from class: com.bumptech.glide.load.data.f.1
        @Override // com.bumptech.glide.load.data.e.a
        public final e<Object> a(Object obj) {
            return new a(obj);
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, e.a<?>> f7402a = new HashMap();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/f$a.class */
    static final class a implements e<Object> {

        /* renamed from: a  reason: collision with root package name */
        private final Object f7403a;

        a(Object obj) {
            this.f7403a = obj;
        }

        @Override // com.bumptech.glide.load.data.e
        public final Object a() {
            return this.f7403a;
        }

        @Override // com.bumptech.glide.load.data.e
        public final void b() {
        }
    }

    public final <T> e<T> a(T t) {
        e<T> eVar;
        synchronized (this) {
            j.a(t, "Argument must not be null");
            e.a<?> aVar = this.f7402a.get(t.getClass());
            e.a<?> aVar2 = aVar;
            if (aVar == null) {
                Iterator<e.a<?>> it2 = this.f7402a.values().iterator();
                do {
                    aVar2 = aVar;
                    if (!it2.hasNext()) {
                        break;
                    }
                    aVar2 = it2.next();
                } while (!aVar2.a().isAssignableFrom(t.getClass()));
            }
            e.a<?> aVar3 = aVar2;
            if (aVar2 == null) {
                aVar3 = f7401b;
            }
            eVar = (e<T>) aVar3.a(t);
        }
        return eVar;
    }

    public final void a(e.a<?> aVar) {
        synchronized (this) {
            this.f7402a.put(aVar.a(), aVar);
        }
    }
}
