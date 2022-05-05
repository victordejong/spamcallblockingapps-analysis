package com.google.gson.a.a;

import com.google.gson.a.c;
import com.google.gson.a.h;
import com.google.gson.f;
import com.google.gson.x;
import com.google.gson.y;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/b.class */
public final class b implements y {

    /* renamed from: a  reason: collision with root package name */
    private final c f4441a;

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/b$a.class */
    private static final class a<E> extends x<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final x<E> f4442a;

        /* renamed from: b  reason: collision with root package name */
        private final h<? extends Collection<E>> f4443b;

        public a(f fVar, Type type, x<E> xVar, h<? extends Collection<E>> hVar) {
            this.f4442a = new k(fVar, xVar, type);
            this.f4443b = hVar;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Object a(com.google.gson.c.a aVar) {
            Collection collection;
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.k();
                collection = null;
            } else {
                Collection collection2 = (Collection) this.f4443b.a();
                aVar.a();
                while (aVar.e()) {
                    collection2.add(this.f4442a.a(aVar));
                }
                aVar.b();
                collection = collection2;
            }
            return collection;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ void a(com.google.gson.c.c cVar, Object obj) {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                cVar.e();
                return;
            }
            cVar.a();
            for (E e : collection) {
                this.f4442a.a(cVar, e);
            }
            cVar.b();
        }
    }

    public b(c cVar) {
        this.f4441a = cVar;
    }

    @Override // com.google.gson.y
    public final <T> x<T> a(f fVar, com.google.gson.b.a<T> aVar) {
        a aVar2;
        Type type = aVar.f4532b;
        Class<? super T> cls = aVar.f4531a;
        if (!Collection.class.isAssignableFrom(cls)) {
            aVar2 = null;
        } else {
            Type a2 = com.google.gson.a.b.a(type, (Class<?>) cls);
            aVar2 = new a(fVar, a2, fVar.a(com.google.gson.b.a.a(a2)), this.f4441a.a(aVar));
        }
        return aVar2;
    }
}
